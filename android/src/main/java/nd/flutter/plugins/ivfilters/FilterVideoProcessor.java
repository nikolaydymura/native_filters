package nd.flutter.plugins.ivfilters;

import static com.google.android.exoplayer2.util.Assertions.checkNotNull;

import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLUtils;

import com.google.android.exoplayer2.util.GlProgram;
import com.google.android.exoplayer2.util.GlUtil;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.microedition.khronos.opengles.GL10;

import nd.nativefilters.preview.VideoProcessingGLSurfaceView;

class TextureBinding {
    final String inputKey;
    final int textureId;

    TextureBinding(String inputKey, int textureId) {
        this.inputKey = inputKey;
        this.textureId = textureId;
    }
}

public final class FilterVideoProcessor implements VideoProcessingGLSurfaceView.VideoProcessor {

    private final Context context;
    private final TextureBinding[] textures;
    private final Map<String, Object> attributes;

    private GlProgram program;

    public FilterVideoProcessor(Context context, Map<String, Object> attributes) {
        this.context = context.getApplicationContext();
        this.attributes = attributes;
        List<TextureBinding> bindingList = new ArrayList<>();
        for (String key : attributes.keySet()) {
            if (key.startsWith("input")) {
                final Map<String, Object> attribute = (Map<String, Object>) attributes.get(key);
                String attributeClass = (String) attribute.get("AttributeClass");
                if (attributeClass.equalsIgnoreCase("Bitmap")) {
                    bindingList.add(new TextureBinding(key, -1));
                }
            }
        }
        this.textures = new TextureBinding[bindingList.size()];
        bindingList.toArray(this.textures);
    }

    @Override
    public void initialize() {
        try {
            program =
                    new GlProgram(
                            context,
                            "video_processor_vertex.glsl",
                            attributes.get("AttributeFilterName") + "_video_processor_fragment.glsl");
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
        program.setBufferAttribute(
                "aFramePosition",
                GlUtil.getNormalizedCoordinateBounds(),
                GlUtil.HOMOGENEOUS_COORDINATE_VECTOR_SIZE);
        program.setBufferAttribute(
                "aTexCoords",
                GlUtil.getTextureCoordinateBounds(),
                GlUtil.HOMOGENEOUS_COORDINATE_VECTOR_SIZE);
        if (this.textures.length > 0) {
            final int[] textures = new int[this.textures.length];
            GLES20.glGenTextures(textures.length, textures, 0);
            for (int i = 0; i < textures.length; i++) {
                this.textures[i] = new TextureBinding(this.textures[i].inputKey, textures[i]);
            }
        }
        for (TextureBinding texture : textures) {
            GLES20.glBindTexture(GL10.GL_TEXTURE_2D, texture.textureId);
        }
        GLES20.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MIN_FILTER, GL10.GL_NEAREST);
        GLES20.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MAG_FILTER, GL10.GL_LINEAR);
        GLES20.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_S, GL10.GL_REPEAT);
        GLES20.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_T, GL10.GL_REPEAT);
        for (TextureBinding texture : textures) {
            final Map<String, Object> attribute = (Map<String, Object>) attributes.get(texture.inputKey);
            final Bitmap bitmap = (Bitmap) attribute.get("AttributeCurrent");
            GLUtils.texImage2D(GL10.GL_TEXTURE_2D, /* level= */ 0, bitmap, /* border= */ 0);
        }
    }

    @Override
    public void setSurfaceSize(int width, int height) {
    }

    @Override
    public void draw(int frameTexture, long frameTimestampUs, float[] transformMatrix) {
        for (TextureBinding texture : textures)  {
            GLES20.glBindTexture(GL10.GL_TEXTURE_2D, texture.textureId);
            final Map<String, Object> attribute = (Map<String, Object>) attributes.get(texture.inputKey);
            final Bitmap bitmap = (Bitmap) attribute.get("AttributeCurrent");
            GLUtils.texSubImage2D(
                    GL10.GL_TEXTURE_2D, /* level= */ 0, /* xoffset= */ 0, /* yoffset= */ 0, bitmap);
        }
        GlUtil.checkGlError();

        // Run the shader program.
        GlProgram program = checkNotNull(this.program);
        program.setSamplerTexIdUniform("sTexture", frameTexture, /* texUnitIndex= */ 0);
        program.setFloatsUniform("uTexTransform", transformMatrix);
        for (String key : attributes.keySet()) {
            if (key.startsWith("input")) {
                final Map<String, Object> attribute = (Map<String, Object>) attributes.get(key);
                if (attribute.get("AttributeClass") == "float") {
                    if (attribute.get("AttributeCurrent") != null) {
                        program.setFloatUniform(key, (Float) attribute.get("AttributeCurrent"));
                    } else {
                        program.setFloatUniform(key, (Float) attribute.get("AttributeDefault"));
                    }
                } else if (attribute.get("AttributeClass") == "Bitmap") {
                    for (TextureBinding texture : textures)  {
                        if (texture.inputKey.equalsIgnoreCase(key)) {
                            program.setSamplerTexIdUniform(key, texture.textureId, /* texUnitIndex= */ 1);
                            break;
                        }
                    }
                }
            }
        }
        program.bindAttributesAndUniforms();
        GLES20.glClear(GLES20.GL_COLOR_BUFFER_BIT);
        GLES20.glDrawArrays(GLES20.GL_TRIANGLE_STRIP, /* first= */ 0, /* count= */ 4);
        GlUtil.checkGlError();
    }

    @Override
    public void release() {
        if (program != null) {
            program.delete();
        }
    }
}