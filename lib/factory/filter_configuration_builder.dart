import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';

const minimum = -2 ^ 31;
const maximum = 2 ^ 31 - 1;

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

  void validate(Map<String, dynamic> filterAttributes) {
    for (final argumentName in params.entries) {
      final key = argumentName.key;

      final value = argumentName.value;

      final Map<String, dynamic>? attribute = filterAttributes[key];

      if (attribute == null) {
        throw 'Attribute $key is not acceptable for ${filterAttributes.keys}';
      }

      final attributeType = attribute['AttributeClass'];

      if (attributeType == 'NSNumber') {
        if (value is bool) {
          continue;
        }
        if (value is num) {
          final min = attribute['AttributeSliderMin'] ??
              attribute['AttributeMin'] ??
              minimum;
          final max = attribute['AttributeSliderMax'] ??
              attribute['AttributeMax'] ??
              maximum;
          if ((min != null && value >= min) && (max != null && value <= max)) {
            continue;
          }
          throw '$value is not in a range ${attribute['AttributeSliderMin']} - ${attribute['AttributeSliderMax']}';
        }
        throw '$value is not  number format';
      } else if (attribute['AttributeType'] == 'CIAttributeTypeBoolean') {
        if (value is bool) {
          continue;
        }
        throw '$value is not a bool format';
      } else if (attributeType == 'CIColor') {
        if (value.red != null &&
            value.red is num &&
            value.green != null &&
            value.green is num &&
            value.blue != null &&
            value.blue is num &&
            value.alpha != null &&
            value.alpha is num) {
          continue;
        }
        throw '$key is not a $attributeType format';
      } else if (attributeType == 'NSValue') {
        if (value.length == 6) {
          continue;
        }
        throw 'Must be 6 elements in the list';
      } else if (attributeType == 'CIVector') {
        if (attribute['AttributeType'] == 'CIAttributeTypePosition3') {
          if (value.length == 3) {
            continue;
          }
          throw 'Must be 3 elements in the list';
        } else if (attribute['AttributeType'] == 'CIAttributeTypeRectangle') {
          if (value.length == 2) {
            continue;
          }
          throw 'Must be 2 elements in the list';
        } else if (attribute['AttributeType'] == 'CIAttributeTypePosition' ||
            attribute['AttributeType'] == 'CIAttributeTypeOffset') {
          continue;
        }
        throw '$key is not a CIVector format';
      } else if (attributeType == 'CIImage') {
        if (attribute['AttributeType'] == 'CIAttributeTypeImage') {
          continue;
        }
        throw '$key is not a $attributeType format';
      }
    }
  }
}
