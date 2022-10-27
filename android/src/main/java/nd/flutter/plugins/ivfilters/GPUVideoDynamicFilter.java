package nd.flutter.plugins.ivfilters;

import static android.opengl.GLES20.GL_FLOAT;

import android.content.Context;
import android.opengl.GLES20;

import com.daasuu.gpuv.egl.EglUtil;
import com.daasuu.gpuv.egl.GlFramebufferObject;
import com.daasuu.gpuv.egl.filter.GlFilter;
import com.google.android.exoplayer2.util.GlUtil;

import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.Map;

public class GPUVideoDynamicFilter extends GlFilter {

    private final GPUVideoDynamicFilter.GlFilter filter;

    private final String shader;
    @androidx.annotation.NonNull
    private final Map<String, Map<String, Object>> attributes;

    public GPUVideoDynamicFilter(Context context, Map<String, Map<String, Object>> attributes) throws IOException {
        this(GlUtil.loadAsset(context, attributes.get("AttributeFilterName") + "_fragment.glsl"), attributes);
    }

    public GPUVideoDynamicFilter(String shader, Map<String, Map<String, Object>> attributes) {
        super();
        this.shader = shader;
        this.attributes = attributes;
        this.filter = new GPUVideoDynamicFilter.GlFilter(GPUVideoDynamicFilter.GlFilter.DEFAULT_VERTEX_SHADER, shader) {
            @Override
            protected void onDraw() {
                GPUVideoDynamicFilter.this.onDraw();
            }
        };
    }

    @Override
    public void setup() {
        filter.setup();
    }

    @Override
    public void draw(int texName, GlFramebufferObject fbo) {
        filter.draw(texName, fbo);
    }

    @Override
    public void release() {
        filter.release();
    }

    @Override
    public void onDraw() {
        for (String key : attributes.keySet()) {
            if (key.startsWith("input")) {
                int location = filter.getHandle(key);
                final Map<String, Object> attribute = (Map<String, Object>) attributes.get(key);
                String attributeClass = (String) attribute.get("AttributeClass");
                if (attributeClass.equalsIgnoreCase("float")) {
                    if (attribute.get("AttributeCurrent") != null) {
                        GLES20.glUniform1f(location, floatValue(attribute.get("AttributeCurrent")));
                    } else {
                        GLES20.glUniform1f(location, floatValue(attribute.get("AttributeDefault")));
                    }
                } else if (attributeClass.equalsIgnoreCase("float[]")) {
                    if (attribute.get("AttributeCurrent") != null) {
                        GLES20.glUniform3fv(location, 1, FloatBuffer.wrap((float[]) attribute.get("AttributeCurrent")));
                    } else {
                        GLES20.glUniform3fv(location, 1, FloatBuffer.wrap((float[]) attribute.get("AttributeDefault")));
                    }
                }
            }
        }
    }

    public float floatValue(Object value) {
        return ((Double) value).floatValue();
    }

    private static class GlFilter {
        public static final String DEFAULT_UNIFORM_SAMPLER = "inputImageTexture";

        protected static final String DEFAULT_VERTEX_SHADER =
                "attribute highp vec4 aPosition;\n" +
                        "attribute highp vec4 aTextureCoord;\n" +
                        "varying highp vec2 textureCoordinate;\n" +
                        "void main() {\n" +
                        "gl_Position = aPosition;\n" +
                        "textureCoordinate = aTextureCoord.xy;\n" +
                        "}\n";

        private static final float[] VERTICES_DATA = new float[]{
                // X, Y, Z, U, V
                -1.0f, 1.0f, 0.0f, 0.0f, 1.0f,
                1.0f, 1.0f, 0.0f, 1.0f, 1.0f,
                -1.0f, -1.0f, 0.0f, 0.0f, 0.0f,
                1.0f, -1.0f, 0.0f, 1.0f, 0.0f
        };

        private static final int FLOAT_SIZE_BYTES = 4;
        protected static final int VERTICES_DATA_POS_SIZE = 3;
        protected static final int VERTICES_DATA_UV_SIZE = 2;
        protected static final int VERTICES_DATA_STRIDE_BYTES = (VERTICES_DATA_POS_SIZE + VERTICES_DATA_UV_SIZE) * FLOAT_SIZE_BYTES;
        protected static final int VERTICES_DATA_POS_OFFSET = 0 * FLOAT_SIZE_BYTES;
        protected static final int VERTICES_DATA_UV_OFFSET = VERTICES_DATA_POS_OFFSET + VERTICES_DATA_POS_SIZE * FLOAT_SIZE_BYTES;

        private final String vertexShaderSource;
        private String fragmentShaderSource;

        private int program;

        private int vertexShader;
        private int fragmentShader;

        private int vertexBufferName;

        private final HashMap<String, Integer> handleMap = new HashMap<String, Integer>();

        public GlFilter(final String vertexShaderSource, final String fragmentShaderSource) {
            this.vertexShaderSource = vertexShaderSource;
            this.fragmentShaderSource = fragmentShaderSource;
        }

        public void setup() {
            release();
            vertexShader = EglUtil.loadShader(vertexShaderSource, GLES20.GL_VERTEX_SHADER);
            fragmentShader = EglUtil.loadShader(fragmentShaderSource, GLES20.GL_FRAGMENT_SHADER);
            program = EglUtil.createProgram(vertexShader, fragmentShader);
            vertexBufferName = EglUtil.createBuffer(VERTICES_DATA);

            getHandle("aPosition");
            getHandle("aTextureCoord");
            getHandle(DEFAULT_UNIFORM_SAMPLER);
        }


        public void setFrameSize(final int width, final int height) {
            // do nothing
        }

        public void release() {
            GLES20.glDeleteProgram(program);
            program = 0;
            GLES20.glDeleteShader(vertexShader);
            vertexShader = 0;
            GLES20.glDeleteShader(fragmentShader);
            fragmentShader = 0;
            GLES20.glDeleteBuffers(1, new int[]{vertexBufferName}, 0);
            vertexBufferName = 0;

            handleMap.clear();
        }

        //
        public void draw(final int texName, final GlFramebufferObject fbo) {
            useProgram();

            GLES20.glBindBuffer(GLES20.GL_ARRAY_BUFFER, vertexBufferName);
            GLES20.glEnableVertexAttribArray(getHandle("aPosition"));
            GLES20.glVertexAttribPointer(getHandle("aPosition"), VERTICES_DATA_POS_SIZE, GL_FLOAT, false, VERTICES_DATA_STRIDE_BYTES, VERTICES_DATA_POS_OFFSET);
            GLES20.glEnableVertexAttribArray(getHandle("aTextureCoord"));
            GLES20.glVertexAttribPointer(getHandle("aTextureCoord"), VERTICES_DATA_UV_SIZE, GL_FLOAT, false, VERTICES_DATA_STRIDE_BYTES, VERTICES_DATA_UV_OFFSET);

            GLES20.glActiveTexture(GLES20.GL_TEXTURE0);
            GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, texName);
            GLES20.glUniform1i(getHandle(DEFAULT_UNIFORM_SAMPLER), 0);

            onDraw();

            GLES20.glDrawArrays(GLES20.GL_TRIANGLE_STRIP, 0, 4);

            GLES20.glDisableVertexAttribArray(getHandle("aPosition"));
            GLES20.glDisableVertexAttribArray(getHandle("aTextureCoord"));
            GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, 0);
            GLES20.glBindBuffer(GLES20.GL_ARRAY_BUFFER, 0);
        }

        protected void onDraw() {
        }

        protected final void useProgram() {
            GLES20.glUseProgram(program);
        }

        protected final int getHandle(final String name) {
            final Integer value = handleMap.get(name);
            if (value != null) {
                return value;
            }

            int location = GLES20.glGetAttribLocation(program, name);
            if (location == -1) {
                location = GLES20.glGetUniformLocation(program, name);
            }
            if (location == -1) {
                throw new IllegalStateException("Could not get attrib or uniform location for " + name);
            }
            handleMap.put(name, Integer.valueOf(location));
            return location;
        }
    }
}
