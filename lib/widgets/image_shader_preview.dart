import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter/services.dart';
import '../src/sprvs/monochrome_sprv.dart';
import '../src/sprvs/lookup_sprv.dart';

abstract class ImageShaderConfiguration {
  Iterable<double> get numUniforms => [];

  Iterable<Image> get textureUniforms => [];
}

class LookUpShaderConfiguration implements ImageShaderConfiguration {
  final List<Image?> _textures = List<Image?>.filled(2, null, growable: false);
  final List<double?> _floats;

  LookUpShaderConfiguration.lut8x64()
      : _floats = List<double?>.from([1.0, 8.0, 64.0, 8.0], growable: false);

  LookUpShaderConfiguration.lut8x8()
      : _floats = List<double?>.from([1.0, 8.0, 8.0, 8.0], growable: false);

  LookUpShaderConfiguration.lut16x1()
      : _floats = List<double?>.from([1.0, 16.0, 1.0, 16.0], growable: false);

  final Map<String, int> _textureUniformsLocations = {
    'inputImageTexture': 0,
    'inputTextureCubeData': 1,
  };

  final Map<String, int> _numUniformsLocations = {
    'inputIntensity': 0,
    'inputSize': 1,
    'inputRows': 2
  };

  Future<void> setImage(String asset) async {
    final imageData = await rootBundle.load(asset);
    final image = await decodeImageFromList(imageData.buffer.asUint8List());
    _textures[0] = image;
  }

  Future<void> setLUT(String asset) async {
    final imageData = await rootBundle.load(asset);
    final image = await decodeImageFromList(imageData.buffer.asUint8List());
    _textures[1] = image;
  }

  void setIntensity(double value) {
    _floats[0] = value;
  }

  void setSize(int value) {
    _floats[1] = value.toDouble();
  }

  void setRows(int value) {
    _floats[2] = value.toDouble();
  }

  @override
  Iterable<double> get numUniforms => _floats.whereType<double>();

  @override
  Iterable<Image> get textureUniforms => _textures.whereType<Image>();
}

Future<Image> exportImage(
  String shader,
  ImageShaderConfiguration configuration,
  Size size,
) async {
  PictureRecorder recorder = PictureRecorder();
  Canvas canvas = Canvas(recorder);
  final fragmentProgram = await _shaders[shader]?.call();
  if (fragmentProgram == null) {
    throw UnsupportedError('Invalid shader `$shader`');
  }
  final painter = ImageShaderPainter(fragmentProgram, configuration);

  painter.paint(canvas, size);
  Image renderedImage = await recorder
      .endRecording()
      .toImage(size.width.floor(), size.height.floor());
  return renderedImage;
}

Future<void> exportImageFile(
  String shader,
  ImageShaderConfiguration configuration,
  Size size,
  File output, {
  ImageByteFormat format = ImageByteFormat.png,
}) async {
  final image = await exportImage(shader, configuration, size);
  final bytes = await image.toByteData(format: format);
  if (bytes == null) {
    throw UnsupportedError('Invalid shader `$shader`');
  }

  await output.writeAsBytes(bytes.buffer.asUint8List(), flush: true);
}

final Map<String, Future<FragmentProgram> Function()> _shaders = {
  'Lookup': lookupFragmentProgram,
  'Monochrome': monochromeFragmentProgram
};

class ImageShaderPreview extends StatelessWidget {
  final String shader;
  final ImageShaderConfiguration configuration;

  const ImageShaderPreview({
    Key? key,
    required this.shader,
    required this.configuration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<FragmentProgram>(
        /// Use the generated loader function here
        future: _shaders[shader]?.call(),
        builder: ((context, snapshot) {
          if (snapshot.hasError && kDebugMode) {
            return SingleChildScrollView(
              child: Text(snapshot.error.toString()),
            );
          }
          final shaderProgram = snapshot.data;
          if (shaderProgram == null) {
            /// Shader is loading
            return const CircularProgressIndicator();
          }

          /// Shader is ready to use
          return SizedBox.expand(
            child: CustomPaint(
              painter: ImageShaderPainter(shaderProgram, configuration),
            ),
          );
        }),
      ),
    );
  }
}

/// Customer painter that makes use of the shader
class ImageShaderPainter extends CustomPainter {
  ImageShaderPainter(this._fragmentProgram, this._configuration);

  final ImageShaderConfiguration _configuration;
  final FragmentProgram _fragmentProgram;

  @override
  void paint(Canvas canvas, Size size) {
    /// Create paint using a shader
    ///
    /// Create ImageShader that will provide a GLSL sampler
    final matrix = Matrix4.identity();

    final floatUniforms = Float32List.fromList(
      [..._configuration.numUniforms, size.width, size.height],
    );

    final samplerUniforms = _configuration.textureUniforms.map(
      (e) => ImageShader(
        e,
        TileMode.repeated,
        TileMode.repeated,
        matrix.storage,
      ),
    );

    final paint = Paint()
      ..color = Colors.orangeAccent
      ..shader = _fragmentProgram.shader(
        floatUniforms: floatUniforms,
        samplerUniforms: samplerUniforms.toList(),
      );

    /// Draw a rectangle with the shader-paint
    var vertices = Vertices(
      VertexMode.triangleStrip,
      [
        Offset(0, size.height),
        Offset(size.width, size.height),
        const Offset(0, 0),
        Offset(size.width, 0)
      ],
      textureCoordinates: [
        Offset(0, size.height),
        Offset(size.width, size.height),
        const Offset(0, 0),
        Offset(size.width, 0)
      ],
    );
    canvas.drawVertices(vertices, BlendMode.src, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    if (oldDelegate is ImageShaderPainter &&
        oldDelegate._configuration == _configuration) {
      /// Do not repaint when painter has same set of properties
      return false;
    }
    return true;
  }
}
