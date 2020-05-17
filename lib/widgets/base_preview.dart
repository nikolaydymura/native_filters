import 'dart:io';

import 'package:flutter/services.dart';
import 'package:native_filters/core_image/filter.dart';

abstract class FilterBasePreviewController {
  final MethodChannel _channel;

  FilterBasePreviewController(String name)
      : this._channel = new MethodChannel(name);

  Future<void> loadFile(File file) async {
    return nativeMethod('loadFile', file.path);
  }

  Future<void> loadAsset(String name) async {
    return nativeMethod('loadAsset', name);
  }

  Future<void> changeFilter(CIFilter filter) async {
    return nativeMethod('changeFilter', filter.index);
  }

  Future<void> dispose() async {
    return nativeMethod('release');
  }

  Future<void> nativeMethod(String method, [dynamic arguments]) async {
    return _channel.invokeMethod(method, arguments);
  }
}
