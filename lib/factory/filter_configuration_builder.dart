import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class FilterConfigurationBuilder {
  final Map<String, dynamic> _params = {};

  void setBitmap(String key, Uint8List data) {
    _params[key] = data;
  }

  void setBitmapAsset(String key, String asset) {}

  void setBitmapFile(String key, File file) {}

  void setBool(String key, bool value) {
    _params[key] = value;
  }

  void setCIColor(String key, Color value) {
    _params[key] = value;
  }

  void setCIVector(String key, List<double> value) {
    _params[key] = value;
  }

  void setDoubleList(String key, List<double> value) {
    _params[key] = value;
  }

  void setFloat(String key, double value) {
    _params[key] = value;
  }

  void setFloatList(String key, List<double> value) {
    _params[key] = value;
  }

  void setInt(String key, int value) {
    _params[key] = value;
  }

  void setNSArray(String key, List<dynamic> value) {
    _params[key] = value;
  }

  void setNSAttributedString(String key, String value) {
    _params[key] = value;
  }

  void setNSData(String key, Uint8List data) {
    _params[key] = data;
  }

  void setNSDataAsset(String key, String asset) {}

  void setNSDataFile(String key, File file) {}

  void setNSNumber(String key, num value) {
    _params[key] = value;
  }

  void setNSString(String key, String value) {
    _params[key] = value;
  }

  void setNSValue(String key, List<double> value) {
    _params[key] = value;
  }

  void setPoint(String key, Point<num> value) {
    _params[key] = value;
  }

  void setPointList(String key, List<Point<num>> value) {
    _params[key] = value;
  }

  Map<String, dynamic> get params => Map.of(_params);
}
