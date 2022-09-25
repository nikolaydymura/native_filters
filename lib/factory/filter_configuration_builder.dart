import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class FilterConfigurationBuilder {
  final Map<String, dynamic> _params = {};

  //TODO: questionable
  CIBarcodeDescriptor
  InputStream

  Position
  FloatBuffer

  GPUImageFilter

  void setBitmap(String key, Uint8List data) {
    _params[key] = data;
  }

  void setBitmapAsset(String key, String asset) {}

  void setBitmapFile(String key, File file) {}

  void setBool(String key, num value) {
    _params[key] = value;
  }

  void setCIColor(String key, Color value) {
    _params[key] = value;
  }

  //TODO: questionable
  void setCIVector(String key, CIVector value) {
    _params[key] = value;
  }

  void setDoubleList(String key, List<double> value) {
    _params[key] = value;
  }

  void setFloat(String key, num value) {
    _params[key] = value;
  }

  void setFloatList(String key, List<num> value) {
    _params[key] = value;
  }

  void setInt(String key, num value) {
    _params[key] = value;
  }

  //TODO: questionable
  void setNSArray(String key, List<dynamic> value) {
    _params[key] = value;
  }

  //TODO: questionable
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

  //TODO: questionable
  void setNSString(String key, String value) {
    _params[key] = value;
  }

  //TODO: questionable
  void setNSValue(String key, dynamic value) {
    _params[key] = value;
  }

  void setPoint(String key, Point value) {
    _params[key] = value;
  }

  void setPointList(String key, List<Point> value) {
    _params[key] = value;
  }

  //TODO: questionable
  void setPointF(String key, PointF value) {
    _params[key] = value;
  }

  //TODO: questionable
  void setPointFList(String key, List<PointF> value) {
    _params[key] = value;
  }


  Map<String, dynamic> get params => Map.of(_params);
}
