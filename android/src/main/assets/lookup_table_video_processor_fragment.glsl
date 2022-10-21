precision mediump float;
uniform mediump sampler2D inputCubeTexture;
uniform lowp sampler2D sTexture;
varying highp vec2 vTextureCoord;
vec4 sampleAs3DTexture(vec3 uv) {
    float width = 16.;
    float sliceSize = 1.0 / width;
    float slicePixelSize = sliceSize / width;
    float sliceInnerSize = slicePixelSize * (width - 1.0);
    float zSlice0 = min(floor(uv.z * width), width - 1.0);
    float zSlice1 = min(zSlice0 + 1.0, width - 1.0);
    float xOffset = slicePixelSize * 0.5 + uv.x * sliceInnerSize;
    float s0 = xOffset + (zSlice0 * sliceSize);
    float s1 = xOffset + (zSlice1 * sliceSize);
    vec4 slice0Color = texture2D(inputCubeTexture, vec2(s0, uv.y));
    vec4 slice1Color = texture2D(inputCubeTexture, vec2(s1, uv.y));
    float zOffset = mod(uv.z * width, 1.0);
    vec4 result = mix(slice0Color, slice1Color, zOffset);
    return result;
}
void main() {
    vec4 pixel = texture2D(sTexture, vTextureCoord);
    vec4 gradedPixel = sampleAs3DTexture(pixel.rgb);
    gradedPixel.a = pixel.a;
    pixel = gradedPixel;
    gl_FragColor = pixel;
}