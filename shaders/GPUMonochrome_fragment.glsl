precision lowp float;

varying highp vec2 textureCoordinate;

uniform sampler2D inputImageTexture;
uniform float inputIntensity;
uniform vec3 inputColor;

const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);

void main()
{
    //desat, then apply overlay blend
    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);
    float luminance = dot(textureColor.rgb, luminanceWeighting);

    lowp vec4 desat = vec4(vec3(luminance), 1.0);

    //overlay
    lowp vec4 outputColor = vec4(
    (desat.r < 0.5 ? (2.0 * desat.r * inputColor.r) : (1.0 - 2.0 * (1.0 - desat.r) * (1.0 - inputColor.r))),
    (desat.g < 0.5 ? (2.0 * desat.g * inputColor.g) : (1.0 - 2.0 * (1.0 - desat.g) * (1.0 - inputColor.g))),
    (desat.b < 0.5 ? (2.0 * desat.b * inputColor.b) : (1.0 - 2.0 * (1.0 - desat.b) * (1.0 - inputColor.b))),
    1.0
    );

    //which is better, or are they equal?
    gl_FragColor = vec4(mix(textureColor.rgb, outputColor.rgb, inputIntensity), textureColor.a);
}