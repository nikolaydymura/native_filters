library native_filters;

import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

part 'core_image/filter.dart';

part 'core_image/filter_group.dart';

part 'core_image/metadata.dart';

part 'factory/filter_factory.dart';

part 'factory/filterable.dart';

part 'gpu_image/filter.dart';

part 'gpu_image/filter_group.dart';

part 'gpu_image/metadata.dart';

part 'widgets/base_preview.dart';

part 'widgets/image_preview.dart';

part 'widgets/video_preview.dart';

Uint8List lutPngToNSData(int size, Uint8List bitmap, int width, int height) {
  const floatSize = 4;

  List<double> cubeData = List.filled(size * size * size * 4 * floatSize, 0);
  final rowCount = width ~/ 64;
  final columnCount = height ~/ 64;
  var z = 0;
  var bitmapOffset = 0;
  for (int i = 0; i < rowCount; i++) {
    for (int y = 0; y < size; y++) {
      var tmp = z;
      for (int j = 0; j < columnCount; j++) {
        for (int x = 0; x < size; x++) {
          final alpha = bitmap[bitmapOffset] / 255.0;
          final red = bitmap[bitmapOffset + 1] / 255.0;
          final green = bitmap[bitmapOffset + 2] / 255.0;
          final blue = bitmap[bitmapOffset + 3] / 255.0;

          final dataOffset = (z * size * size + y * size + x) * 4;

          cubeData[dataOffset + 3] = alpha;
          cubeData[dataOffset + 2] = red;
          cubeData[dataOffset + 1] = green;
          cubeData[dataOffset + 0] = blue;
          bitmapOffset += 4;
        }
        z += 1;
      }
      z = tmp;
    }

    z += columnCount;
  }

  final cubeDataRaw = Float32List.fromList(cubeData).buffer.asUint8List();

  return cubeDataRaw.sublist(0, size * size * size * 4 * floatSize);
}
