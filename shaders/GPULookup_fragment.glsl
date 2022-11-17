varying highp vec2 textureCoordinate;
varying highp vec2 textureCoordinate2; // TODO: This is not used

uniform sampler2D inputImageTexture;
uniform sampler2D inputTextureCubeData; // lookup texture

uniform lowp float inputIntensity;
uniform lowp float inputSize;
uniform lowp float inputRows;
uniform lowp float inputColumns;

void main()
{
    highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);

    highp float blueColor = textureColor.b * 63.0;

    highp vec2 quad1;
    quad1.y = floor(floor(blueColor) / 8.0);
    quad1.x = floor(blueColor) - (quad1.y * 8.0);

    highp vec2 quad2;
    quad2.y = floor(ceil(blueColor) / 8.0);
    quad2.x = ceil(blueColor) - (quad2.y * 8.0);

    highp vec2 texPos1;
    texPos1.x = (quad1.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);
    texPos1.y = (quad1.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);

    highp vec2 texPos2;
    texPos2.x = (quad2.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);
    texPos2.y = (quad2.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);

    lowp vec4 newColor1 = texture2D(inputTextureCubeData, texPos1);
    lowp vec4 newColor2 = texture2D(inputTextureCubeData, texPos2);

    lowp vec4 newColor = mix(newColor1, newColor2, fract(blueColor));
    gl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), inputIntensity);
}


/*precision mediump float;
varying highp vec2 textureCoordinate;
uniform mediump sampler2D inputTextureCubeData;
uniform lowp sampler2D inputImageTexture;
uniform lowp float inputIntensity;
uniform lowp float inputSize;
uniform lowp float inputRows;
uniform lowp float inputColumns;

vec2 computeSliceOffset(float slice, float slicesPerRow, vec2 sliceSize) {
  return sliceSize * vec2(mod(slice, slicesPerRow),
                          floor(slice / slicesPerRow));
}

vec4 sampleAs3DTexture2(vec3 textureColor, float size, float numRows, float slicesPerRow) {
    highp vec2 blueColor = vec2(63.0, 63.0) * textureColor.b;
    vec2 sliceRect = vec2(8.0, 64.0);
    highp vec2 quad1;
    quad1.y = floor(floor(blueColor.y) / sliceRect.y);
    quad1.x = floor(blueColor.x) - (floor(floor(blueColor.y) / sliceRect.x) * sliceRect.x);

    highp vec2 quad2;
    quad2.y = floor(ceil(blueColor.y) / sliceRect.y);
    quad2.x = ceil(blueColor.x) - (floor(ceil(blueColor.y) / sliceRect.x) * sliceRect.x);

    vec2 textPosRect = vec2(0.125, 0.015625);

    highp vec2 texPos1;
    texPos1.x = (quad1.x * textPosRect.x) + 0.5/512.0 + ((textPosRect.x - 1.0/512.0) * textureColor.r);
    texPos1.y = (quad1.y * textPosRect.y) + 0.5/512.0 + ((textPosRect.y - 1.0/512.0) * textureColor.g);

    highp vec2 texPos2;
    texPos2.x = (quad2.x * textPosRect.x) + 0.5/512.0 + ((textPosRect.x - 1.0/512.0) * textureColor.r);
    texPos2.y = (quad2.y * textPosRect.y) + 0.5/512.0 + ((textPosRect.y - 1.0/512.0) * textureColor.g);

    lowp vec4 newColor1 = texture2D(inputTextureCubeData, texPos1);
    lowp vec4 newColor2 = texture2D(inputTextureCubeData, texPos2);

    float zOffset = fract(textureColor.z * 64.0);

    lowp vec4 newColor = mix(newColor1, newColor2, zOffset);
    return newColor;
}

vec4 sampleAs3DTexture(vec3 textureColor, float size, float numRows, float slicesPerRow) {
  float slice = textureColor.z * (size - 1.0);
  float zOffset = fract(slice);                         // dist between slices

  vec2 sliceSize = vec2(1.0 / slicesPerRow,             // u space of 1 slice
                        1.0 / numRows);                 // v space of 1 slice

  vec2 slice0Offset = computeSliceOffset(floor(slice), slicesPerRow, sliceSize);
  vec2 slice1Offset = computeSliceOffset(ceil(slice), slicesPerRow, sliceSize);

  vec2 slicePixelSize = sliceSize / size;               // space of 1 pixel
  vec2 sliceInnerSize = slicePixelSize * (size - 1.0);  // space of size pixels

  vec2 uv = slicePixelSize * 0.5 + textureColor.xy * sliceInnerSize;
  vec4 slice0Color = texture2D(inputTextureCubeData, slice0Offset + uv);
  vec4 slice1Color = texture2D(inputTextureCubeData, slice1Offset + uv);
  return mix(slice0Color, slice1Color, zOffset);
}

void main() {
   vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);
   vec4 newColor = sampleAs3DTexture2(textureColor.rgb, inputSize, inputRows, inputColumns);
   gl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), inputIntensity);
}*/