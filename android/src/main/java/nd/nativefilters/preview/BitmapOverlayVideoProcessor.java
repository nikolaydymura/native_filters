/*
 * Copyright (C) 2020 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package nd.nativefilters.preview;

import static com.google.android.exoplayer2.util.Assertions.checkNotNull;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.opengl.GLES20;
import android.opengl.GLUtils;

import com.daasuu.gpuv.egl.GlPreview;
import com.daasuu.gpuv.egl.GlPreviewFilter;
import com.daasuu.gpuv.egl.filter.GlFilter;
import com.daasuu.gpuv.egl.filter.GlMonochromeFilter;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.GlProgram;
import com.google.android.exoplayer2.util.GlUtil;
import java.io.IOException;
import java.util.Locale;
import javax.microedition.khronos.opengles.GL10;

/**
 * Video processor that demonstrates how to overlay a bitmap on video output using a GL shader. The
 * bitmap is drawn using an Android {@link Canvas}.
 */
final class  FilterVideoProcessor implements VideoProcessingGLSurfaceView.VideoProcessor {
    GlFilter filter;

    @Override
    public void initialize() {
        filter.setup();
    }

    @Override
    public void setSurfaceSize(int width, int height) {
        filter.setFrameSize(width, height);
    }

    @Override
    public void draw(int frameTexture, long frameTimestampUs, float[] transformMatrix) {
        filter.draw(frameTexture, null);
    }

    @Override
    public void release() {
        filter.release();
    }
}

final class LookUpTableVideoProcessor implements VideoProcessingGLSurfaceView.VideoProcessor {

    private final Context context;
    private final int[] textures;
    private final Bitmap lutBitmap;

    private GlProgram program;

    public LookUpTableVideoProcessor(Context context) {
        this.context = context.getApplicationContext();
        textures = new int[1];
        try {
            lutBitmap = BitmapFactory.decodeStream(context.getAssets().open("lookup_sample.png"));
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override
    public void initialize() {
        try {
            program =
                    new GlProgram(
                            context,
                            "monochrome_video_processor_vertex.glsl",
                            "lookup_table_video_processor_fragment.glsl");
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
        GLES20.glGenTextures(1, textures, 0);
        GLES20.glBindTexture(GL10.GL_TEXTURE_2D, textures[0]);
        GLES20.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MIN_FILTER, GL10.GL_NEAREST);
        GLES20.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MAG_FILTER, GL10.GL_LINEAR);
        GLES20.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_S, GL10.GL_REPEAT);
        GLES20.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_T, GL10.GL_REPEAT);
        GLUtils.texImage2D(GL10.GL_TEXTURE_2D, /* level= */ 0, lutBitmap, /* border= */ 0);
    }

    @Override
    public void setSurfaceSize(int width, int height) {
    }

    @Override
    public void draw(int frameTexture, long frameTimestampUs, float[] transformMatrix) {
        GLES20.glBindTexture(GL10.GL_TEXTURE_2D, textures[0]);
        GLUtils.texSubImage2D(
                GL10.GL_TEXTURE_2D, /* level= */ 0, /* xoffset= */ 0, /* yoffset= */ 0, lutBitmap);
        GlUtil.checkGlError();

        // Run the shader program.
        GlProgram program = checkNotNull(this.program);
        program.setSamplerTexIdUniform("sTexture", frameTexture, /* texUnitIndex= */ 0);
        program.setFloatsUniform("uTexTransform", transformMatrix);
        program.setSamplerTexIdUniform("inputCubeTexture", textures[0], /* texUnitIndex= */ 1);
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

/* package */ final class BitmapOverlayVideoProcessor
        implements VideoProcessingGLSurfaceView.VideoProcessor {

    private static final int OVERLAY_WIDTH = 512;
    private static final int OVERLAY_HEIGHT = 256;

    private final Context context;
    private final Paint paint;
    private final int[] textures;
    private final Bitmap overlayBitmap;
    private final Bitmap logoBitmap;
    private final Canvas overlayCanvas;

    private GlProgram program;

    private float bitmapScaleX;
    private float bitmapScaleY;

    public BitmapOverlayVideoProcessor(Context context) {
        this.context = context.getApplicationContext();
        paint = new Paint();
        paint.setTextSize(64);
        paint.setAntiAlias(true);
        paint.setARGB(0xFF, 0xFF, 0xFF, 0xFF);
        textures = new int[1];
        overlayBitmap = Bitmap.createBitmap(OVERLAY_WIDTH, OVERLAY_HEIGHT, Bitmap.Config.ARGB_8888);
        overlayCanvas = new Canvas(overlayBitmap);
        try {
            logoBitmap =
                    ((BitmapDrawable)
                            context.getPackageManager().getApplicationIcon(context.getPackageName()))
                            .getBitmap();
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override
    public void initialize() {
        try {
            program =
                    new GlProgram(
                            context,
                            /* vertexShaderFilePath= */ "bitmap_overlay_video_processor_vertex.glsl",
                            /* fragmentShaderFilePath= */ "bitmap_overlay_video_processor_fragment.glsl");
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
        GLES20.glGenTextures(1, textures, 0);
        GLES20.glBindTexture(GL10.GL_TEXTURE_2D, textures[0]);
        GLES20.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MIN_FILTER, GL10.GL_NEAREST);
        GLES20.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MAG_FILTER, GL10.GL_LINEAR);
        GLES20.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_S, GL10.GL_REPEAT);
        GLES20.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_WRAP_T, GL10.GL_REPEAT);
        GLUtils.texImage2D(GL10.GL_TEXTURE_2D, /* level= */ 0, overlayBitmap, /* border= */ 0);
    }

    @Override
    public void setSurfaceSize(int width, int height) {
        bitmapScaleX = (float) width / OVERLAY_WIDTH;
        bitmapScaleY = (float) height / OVERLAY_HEIGHT;
    }

    @Override
    public void draw(int frameTexture, long frameTimestampUs, float[] transformMatrix) {
        // Draw to the canvas and store it in a texture.
        String text = String.format(Locale.US, "%.02f", frameTimestampUs / (float) C.MICROS_PER_SECOND);
        overlayBitmap.eraseColor(Color.TRANSPARENT);
        overlayCanvas.drawBitmap(logoBitmap, /* left= */ 32, /* top= */ 32, paint);
        overlayCanvas.drawText(text, /* x= */ 200, /* y= */ 130, paint);
        GLES20.glBindTexture(GL10.GL_TEXTURE_2D, textures[0]);
        GLUtils.texSubImage2D(
                GL10.GL_TEXTURE_2D, /* level= */ 0, /* xoffset= */ 0, /* yoffset= */ 0, overlayBitmap);
        GlUtil.checkGlError();

        // Run the shader program.
        GlProgram program = checkNotNull(this.program);
        program.setSamplerTexIdUniform("uTexSampler0", frameTexture, /* texUnitIndex= */ 0);
        program.setSamplerTexIdUniform("uTexSampler1", textures[0], /* texUnitIndex= */ 1);
        program.setFloatUniform("uScaleX", bitmapScaleX);
        program.setFloatUniform("uScaleY", bitmapScaleY);
        program.setFloatsUniform("uTexTransform", transformMatrix);
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