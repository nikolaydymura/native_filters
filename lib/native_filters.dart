library native_filters;

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'src/messages/messages.g.dart';

part 'src/factory/filter_factory.dart';

part 'src/metadata/ci_filters.dart';

part 'src/metadata/gl_filters.dart';

part 'src/metadata/gpu_image_filters.dart';

part 'src/filters/filter_group.dart';

part 'src/filters/filterable.dart';

part 'src/filters/filter.dart';

part 'widgets/video_preview.dart';

Uint8List lutPngToNSData(int size, Uint8List bitmap, int width, int height) {
  const floatSize = 4;

  final amount = size * size * size * 4 * floatSize;
  List<double> cubeData = List.filled(amount, 0);
  final rowCount = width ~/ size;
  final columnCount = height ~/ size;
  var z = 0;
  var bitmapOffset = 0;
  for (int i = 0; i < rowCount; i++) {
    for (int y = 0; y < size; y++) {
      var tmp = z;
      for (int j = 0; j < columnCount; j++) {
        for (int x = 0; x < size; x++) {
          final alpha = bitmap[bitmapOffset].toDouble() / 255.0;
          final red = bitmap[bitmapOffset + 1].toDouble() / 255.0;
          final green = bitmap[bitmapOffset + 2].toDouble() / 255.0;
          final blue = bitmap[bitmapOffset + 3].toDouble() / 255.0;

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

  return cubeDataRaw.sublist(0, amount);
}
