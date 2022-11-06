precision mediump float;
varying highp vec2 textureCoordinate;
uniform mediump sampler2D inputTextureCubeData;
uniform lowp sampler2D inputImageTexture;
uniform lowp float inputIntensity;
uniform lowp float inputSize;
uniform lowp float inputRows;

vec2 computeSliceOffset(float slice, float slicesPerRow, vec2 sliceSize) {
  return sliceSize * vec2(mod(slice, slicesPerRow),
                          floor(slice / slicesPerRow));
}

vec4 sampleAs3DTexture(vec3 texCoord, float size, float numRows, float slicesPerRow) {
  float slice   = texCoord.z * size;
  float sliceZ  = floor(slice);                         // slice we need
  float zOffset = fract(slice);                         // dist between slices

  vec2 sliceSize = vec2(1.0 / slicesPerRow,             // u space of 1 slice
                        1.0 / numRows);                 // v space of 1 slice

  vec2 slice0Offset = computeSliceOffset(sliceZ, slicesPerRow, sliceSize);
  vec2 slice1Offset = computeSliceOffset(sliceZ + 1.0, slicesPerRow, sliceSize);

  vec2 slicePixelSize = sliceSize / size;               // space of 1 pixel
  vec2 sliceInnerSize = slicePixelSize * (size - 1.0);  // space of size pixels

  vec2 uv = slicePixelSize * 0.5 + texCoord.xy * sliceInnerSize;
  vec4 slice0Color = texture2D(inputTextureCubeData, slice0Offset + uv);
  vec4 slice1Color = texture2D(inputTextureCubeData, slice1Offset + uv);
  return mix(slice0Color, slice1Color, zOffset);
}

void main() {
   vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);
   vec4 newColor = sampleAs3DTexture(textureColor.rgb, inputSize, inputRows, 8.0);
   newColor.a = textureColor.a;
   gl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), inputIntensity);
}