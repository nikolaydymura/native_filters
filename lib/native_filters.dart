library native_filters;

import 'dart:async';
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

Uint8List lutPngToNSData(
    int cubeDimension, Uint8List bitmap, int columnCount, int rowCount) {
  const floatSize = 4;
  const channels = 4;

  final amount = cubeDimension * cubeDimension * cubeDimension * channels * floatSize;
  List<double> cubeData = List.filled(amount, 0);
  var z = 0;
  var bitmapOffset = 0;
  for (int i = 0; i < rowCount; i++) {
    for (int y = 0; y < cubeDimension; y++) {
      var tmp = z;
      for (int j = 0; j < columnCount; j++) {
        for (int x = 0; x < cubeDimension; x++) {
          final red = bitmap[bitmapOffset].toDouble() / 255.0;
          final green = bitmap[bitmapOffset + 1].toDouble() / 255.0;
          final blue = bitmap[bitmapOffset + 2].toDouble() / 255.0;
          final alpha = bitmap[bitmapOffset + 3].toDouble() / 255.0;

          final dataOffset = (z * cubeDimension * cubeDimension + y * cubeDimension + x) * channels;

          cubeData[dataOffset + 0] = red;
          cubeData[dataOffset + 1] = green;
          cubeData[dataOffset + 2] = blue;
          cubeData[dataOffset + 3] = alpha;
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
