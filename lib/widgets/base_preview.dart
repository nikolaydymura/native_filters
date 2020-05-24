import 'package:flutter/services.dart';
import 'package:native_filters/core_image/filter.dart';

abstract class FilterBasePreviewController {
  final MethodChannel _channel;
  final CIFilter filter;

  FilterBasePreviewController(String name, this.filter)
      : this._channel = new MethodChannel(name) {
    this._channel.invokeMethod('setFilter', filter.index);
  }

  Future<void> dispose() async {
    return _channel.invokeMethod('release');
  }

  Future<void> update() async {
    return _channel.invokeMethod('update');
  }
}
