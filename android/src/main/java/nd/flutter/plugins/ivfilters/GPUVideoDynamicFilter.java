package nd.flutter.plugins.ivfilters;

import static android.opengl.GLES20.GL_FLOAT;

import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLES20;

import com.daasuu.gpuv.egl.EglUtil;
import com.daasuu.gpuv.egl.GlFramebufferObject;
import com.daasuu.gpuv.egl.filter.GlFilter;
import com.google.android.exoplayer2.util.GlUtil;

import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.Map;

import jp.co.cyberagent.android.gpuimage.util.OpenGlUtils;

public class GPUVideoDynamicFilter extends GlFilter {

    private final GPUVideoDynamicFilter.GlFilter filter;

    @androidx.annotation.NonNull
    private final Map<String, Map<String, Object>> attributes;
    public final Map<String, Object> values;

    private int filterSourceTexture2 = OpenGlUtils.NO_TEXTURE;

    private Bitmap bitmap;

    public GPUVideoDynamicFilter(String shader, Map<String, Map<String, Object>> attributes) {
        super();
        this.attributes = attributes;
        this.values = new HashMap<>();
        this.filter = new GPUVideoDynamicFilter.GlFilter(GPUVideoDynamicFilter.GlFilter.DEFAULT_VERTEX_SHADER, shader) {
            @Override
            protected void onDraw() {
                GPUVideoDynamicFilter.this.onDraw();
            }
        };
    }

    public GPUVideoDynamicFilter(String vertex, String shader, Map<String, Map<String, Object>> attributes) {
        super();
        this.attributes = attributes;
        this.values = new HashMap<>();
        this.filter = new GPUVideoDynamicFilter.GlFilter(vertex, shader) {
            @Override
            protected void onDraw() {
                GPUVideoDynamicFilter.this.onDraw();
            }
        };
    }

    @Override
    public void setup() {
        filter.setup();
        if (filterSourceTexture2 == EglUtil.NO_TEXTURE && bitmap != null) {
            filterSourceTexture2 = EglUtil.loadTexture(bitmap, EglUtil.NO_TEXTURE, false);
        }
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
            if (key.startsWith("input") && !key.startsWith("inputTexture")) {
                int location = filter.getHandle(key);
                final Map<String, Object> attribute = (Map<String, Object>) attributes.get(key);
                String attributeClass = (String) attribute.get("AttributeClass");
                if (attributeClass.equalsIgnoreCase("float")) {
                    final Object current = values.get(key);
                    if (current != null) {
                        GLES20.glUniform1f(location, (Float) current);
                    } else {
                        GLES20.glUniform1f(location, floatValue(attribute.get("AttributeDefault")));
                    }
                } else if (attributeClass.equalsIgnoreCase("float[]")) {
                    final Object current = values.get(key);
                    if (current != null) {
                        GLES20.glUniform3fv(location, 1, FloatBuffer.wrap((float[]) current));
                    } else {
                        GLES20.glUniform3fv(location, 1, FloatBuffer.wrap((float[]) attribute.get("AttributeDefault")));
                    }
                }
            }
        }
        if (bitmap != null) {
            int offsetDepthMapTextureUniform = filter.getHandle("inputTextureCubeData");
            GLES20.glActiveTexture(GLES20.GL_TEXTURE3);
            GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, filterSourceTexture2);
            GLES20.glUniform1i(offsetDepthMapTextureUniform, 3);
        }
    }

    public void update(String key, Object value) {
        final Map<String, Object> attribute = (Map<String, Object>) attributes.get(key);
        String attributeClass = (String) attribute.get("AttributeClass");
        if (attributeClass.equalsIgnoreCase("float")) {
            values.put(key, floatValue(value));
        } else if (attributeClass.equalsIgnoreCase("float[]")) {
            values.put(key, value);
        }
    }

    public float floatValue(Object value) {
        return ((Double) value).floatValue();
    }

    public void setBitmap(Bitmap bitmap) {
        this.bitmap = bitmap;
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
