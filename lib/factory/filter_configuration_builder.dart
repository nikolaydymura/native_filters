import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class FilterConfigurationBuilder {
  final Map<String, dynamic> _params = {};

  Future<void> validate(Map<String, dynamic> filterAttributes) async {
    var passedCount = 0;
    for (final argumentName in _params.keys) {
      final attribute = filterAttributes[argumentName];

      final valueParams = _params[argumentName];

      //TODO: change attribute link
      if (argumentName == 'inputAcuteAngle') {
        if (attribute == null) {
          return Future.error('$attribute is not acceptable for $argumentName');
        }
        if (attribute['CIAttributeClass'] != 'NSNumber') {
          return Future.error(
              '${attribute['CIAttributeClass']} is not number format');
        }
        if (attribute['CIAttributeType'] == 'CIAttributeTypeAngle') {
          return Future.error(
              '${attribute['CIAttributeType']} is not CIAttributeTypeAngle format');
        }
        if (attribute['CIAttributeSliderMax'] != null) {
          final max = double.parse(valueParams['CIAttributeSliderMax'] ?? '');

          if (attribute['CIAttributeSliderMax'] > max) {
            return Future.error(
                '${attribute['CIAttributeSliderMax']} must be more than $max');
          }
        }
        if (attribute['CIAttributeSliderMin'] != null) {
          final min = double.parse(valueParams['CIAttributeSliderMin'] ?? '');

          if (attribute['CIAttributeSliderMin'] < min) {
            return Future.error('$attribute must be more than $min');
          }
        }
      }
      if (argumentName == 'inputAlphaCoefficients' ||
          argumentName == 'inputAVector' ||
          argumentName == 'inputBiasVector' ||
          argumentName == 'inputBlueCoefficients' ||
          argumentName == 'inputBVector') {
        if (attribute == null) {
          return Future.error('$attribute is not acceptable for $argumentName');
        }
        if (attribute['CIAttributeClass'] != 'CIVector') {
          return Future.error(
              '${attribute['CIAttributeClass']} is not CIVector format');
        }
      }
      if (argumentName == 'inputAlwaysSpecifyCompaction') {
        if (attribute == null) {
          return Future.error('$attribute is not acceptable for $argumentName');
        }
        if (attribute['CIAttributeClass'] != 'NSNumber') {
          return Future.error(
              '${attribute['CIAttributeClass']} is not number format');
        }

        if (attribute['CIAttributeSliderMax'] != null) {
          final max = double.parse(valueParams['CIAttributeSliderMax'] ?? '');

          if (attribute['CIAttributeSliderMax'] > max) {
            return Future.error(
                '${attribute['CIAttributeSliderMax']} must be more than $max');
          }
        }
        if (attribute['CIAttributeSliderMin'] != null) {
          final min = double.parse(valueParams['CIAttributeSliderMin'] ?? '');

          if (attribute['CIAttributeSliderMin'] < min) {
            return Future.error('$attribute must be more than $min');
          }
        }
        if (attribute['CIAttributeMax'] != null) {
          final max = double.parse(valueParams['CIAttributeMax'] ?? '');

          if (attribute['CIAttributeMax'] > max) {
            return Future.error(
                '${attribute['CIAttributeMax']} must be more than $max');
          }
        }
        if (attribute['CIAttributeMin'] != null) {
          final min = double.parse(valueParams['CIAttributeMin'] ?? '');

          if (attribute['CIAttributeMin'] < min) {
            return Future.error('$attribute must be more than $min');
          }
        }
      }
      if (argumentName == 'inputAmount' ||
          attribute['CIAttributeType'] == 'inputAperture' ||
          attribute['CIAttributeType'] == 'inputB' ||
          attribute['CIAttributeType'] == 'inputBarcodeHeight' ||
          attribute['CIAttributeType'] == 'inputC' ||
          attribute['CIAttributeType'] == 'inputCenterStretchAmount') {
        if (attribute == null) {
          return Future.error('$attribute is not acceptable for $argumentName');
        }
        if (attribute['CIAttributeClass'] != 'NSNumber') {
          return Future.error(
              '${attribute['CIAttributeClass']} is not number format');
        }
        if (attribute['CIAttributeType'] == 'CIAttributeTypeScalar') {
          return Future.error(
              '${attribute['CIAttributeType']} is not CIAttributeTypeScalar format');
        }
        if (attribute['CIAttributeSliderMax'] != null) {
          final max = double.parse(valueParams['CIAttributeSliderMax'] ?? '');

          if (attribute['CIAttributeSliderMax'] > max) {
            return Future.error(
                '${attribute['CIAttributeSliderMax']} must be more than $max');
          }
        }
        if (attribute['CIAttributeSliderMin'] != null) {
          final min = double.parse(valueParams['CIAttributeSliderMin'] ?? '');

          if (attribute['CIAttributeSliderMin'] < min) {
            return Future.error('$attribute must be more than $min');
          }
        }
        if (attribute['CIAttributeMax'] != null) {
          final max = double.parse(valueParams['CIAttributeMax'] ?? '');

          if (attribute['CIAttributeMax'] > max) {
            return Future.error(
                '${attribute['CIAttributeMax']} must be more than $max');
          }
        }
        if (attribute['CIAttributeMin'] != null) {
          final min = double.parse(valueParams['CIAttributeMin'] ?? '');

          if (attribute['CIAttributeMin'] < min) {
            return Future.error('$attribute must be more than $min');
          }
        }
      }

      if (argumentName == 'inputAngle') {
        if (attribute == null) {
          return Future.error('$attribute is not acceptable for $argumentName');
        }
        if (attribute['CIAttributeClass'] != 'NSNumber') {
          return Future.error(
              '${attribute['CIAttributeClass']} is not number format');
        }
        if (attribute['CIAttributeType'] == 'CIAttributeTypeAngle') {
          return Future.error(
              '${attribute['CIAttributeType']} is not CIAttributeTypeAngle format');
        }
        if (attribute['CIAttributeSliderMax'] != null) {
          final max = double.parse(valueParams['CIAttributeSliderMax'] ?? '');

          if (attribute['CIAttributeSliderMax'] > max) {
            return Future.error(
                '${attribute['CIAttributeSliderMax']} must be more than $max');
          }
        }
        if (attribute['CIAttributeSliderMin'] != null) {
          final min = double.parse(valueParams['CIAttributeSliderMin'] ?? '');

          if (attribute['CIAttributeSliderMin'] < min) {
            return Future.error('$attribute must be more than $min');
          }
        }
        if (attribute['CIAttributeMax'] != null) {
          final max = double.parse(valueParams['CIAttributeMax'] ?? '');

          if (attribute['CIAttributeMax'] > max) {
            return Future.error(
                '${attribute['CIAttributeMax']} must be more than $max');
          }
        }
        if (attribute['CIAttributeMin'] != null) {
          final min = double.parse(valueParams['CIAttributeMin'] ?? '');

          if (attribute['CIAttributeMin'] < min) {
            return Future.error('$attribute must be more than $min');
          }
        }
      }

      if (argumentName == 'inputAspectRatio' ||
          argumentName == 'inputBarOffset' ||
          argumentName == 'inputBrightness' ||
          argumentName == 'inputCloseness1') {
        if (attribute == null) {
          return Future.error('$attribute is not acceptable for $argumentName');
        }
        if (attribute['CIAttributeClass'] != 'NSNumber') {
          return Future.error(
              '${attribute['CIAttributeClass']} is not number format');
        }
        if (attribute['CIAttributeType'] == 'CIAttributeTypeScalar') {
          return Future.error(
              '${attribute['CIAttributeType']} is not CIAttributeTypeScalar format');
        }
        if (attribute['CIAttributeSliderMax'] != null) {
          final max = double.parse(valueParams['CIAttributeSliderMax'] ?? '');

          if (attribute['CIAttributeSliderMax'] > max) {
            return Future.error(
                '${attribute['CIAttributeSliderMax']} must be more than $max');
          }
        }
        if (attribute['CIAttributeSliderMin'] != null) {
          final min = double.parse(valueParams['CIAttributeSliderMin'] ?? '');

          if (attribute['CIAttributeSliderMin'] < min) {
            return Future.error('$attribute must be more than $min');
          }
        }

        if (attribute['CIAttributeMin'] != null) {
          final min = double.parse(valueParams['CIAttributeMin'] ?? '');

          if (attribute['CIAttributeMin'] < min) {
            return Future.error('$attribute must be more than $min');
          }
        }
      }

      if (argumentName == 'inputAuxDataMetadata') {
        if (attribute == null) {
          return Future.error('$attribute is not acceptable for $argumentName');
        }
        if (attribute['CIAttributeClass'] != 'CGImageMetadataRef') {
          return Future.error(
              '${attribute['CIAttributeClass']} is not CGImageMetadataRef format');
        }
      }

      if (argumentName == 'inputAVCameraCalibrationData' ||
          argumentName == 'inputCalibrationData') {
        if (attribute == null) {
          return Future.error('$attribute is not acceptable for $argumentName');
        }
        if (attribute['CIAttributeClass'] != 'AVCameraCalibrationData') {
          return Future.error(
              '${attribute['CIAttributeClass']} is not AVCameraCalibrationData format');
        }
      }

      if (argumentName == 'inputBackgroundImage') {
        if (attribute == null) {
          return Future.error('$attribute is not acceptable for $argumentName');
        }
        if (attribute['CIAttributeClass'] != 'CIImage') {
          return Future.error(
              '${attribute['CIAttributeClass']} is not CIImage format');
        }

        if (attribute['CIAttributeType'] != 'CIAttributeTypeImage') {
          return Future.error(
              '${attribute['CIAttributeType']} is not CIAttributeTypeImage format');
        }
      }

      if (argumentName == 'inputBacksideImage') {
        if (attribute == null) {
          return Future.error('$attribute is not acceptable for $argumentName');
        }
        if (attribute['CIAttributeClass'] != 'CIImage') {
          return Future.error(
              '${attribute['CIAttributeClass']} is not CIImage format');
        }
      }

      if (argumentName == 'inputBarcodeDescriptor') {
        if (attribute == null) {
          return Future.error('$attribute is not acceptable for $argumentName');
        }
        if (attribute['CIAttributeClass'] != 'CIBarcodeDescriptor') {
          return Future.error(
              '${attribute['CIAttributeClass']} is not CIBarcodeDescriptor format');
        }
      }

      if (argumentName == 'inputBias') {
        if (attribute == null) {
          return Future.error('$attribute is not acceptable for $argumentName');
        }
        if (attribute['CIAttributeClass'] != 'NSNumber') {
          return Future.error(
              '${attribute['CIAttributeClass']} is not number format');
        }
      }

      if (argumentName == 'inputBottomLeft' ||
          argumentName == 'inputBottomRight' ||
          argumentName == 'inputBreakpoint0' ||
          argumentName == 'inputBreakpoint1' ||
          argumentName == 'inputCenter' ||
          argumentName == 'inputChinPositions') {
        if (attribute == null) {
          return Future.error('$attribute is not acceptable for $argumentName');
        }
        if (attribute['CIAttributeClass'] != 'CIVector') {
          return Future.error(
              '${attribute['CIAttributeClass']} is not CIVector format');
        }
        if (attribute['CIAttributeType'] != 'CIAttributeTypePosition') {
          return Future.error(
              '${attribute['CIAttributeType']} is not CIAttributeTypePosition format');
        }
      }

      if (argumentName == 'inputCenterColor1' ||
          argumentName == 'inputCenterColor2' ||
          argumentName == 'inputCenterColor3') {
        if (attribute == null) {
          return Future.error('$attribute is not acceptable for $argumentName');
        }
        if (attribute['CIAttributeClass'] != 'CIColor') {
          return Future.error(
              '${attribute['CIAttributeClass']} is not CIColor format');
        }
      }

      passedCount++;
    }
    if (passedCount != _params.length) {
      throw 'You passed extra parameters';
    }
  }

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
