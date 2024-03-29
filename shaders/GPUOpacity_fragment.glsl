varying highp vec2 textureCoordinate;
            
              uniform sampler2D inputImageTexture;
              uniform lowp float inputOpacity;
            
              void main()
              {
                  lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);
                  
                  gl_FragColor = vec4(textureColor.rgb, textureColor.a * inputOpacity);
              }