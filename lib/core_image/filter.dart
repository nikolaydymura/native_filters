import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';

class CIFilterFactory {
  static const MethodChannel _methodChannel =
      const MethodChannel('CIFilterFactory');

  const CIFilterFactory();

  Future<CIFilter> create(String name) async {
    try {
      final index = await _methodChannel.invokeMethod('create', name);
      return CIFilter._(name, index);
    } catch (error) {
      print(error);
    }
    return null;
  }

  Future<void> dispose(CIFilter filter) async {
    try {
      await _methodChannel.invokeMethod('dispose', filter.index);
    } catch (error) {
      print(error);
    }
  }

  Future<List<String>> get availableFilters async {
    try {
      return await _methodChannel.invokeListMethod<String>('availableFilters');
    } catch (error) {
      print(error);
    }
    return [];
  }
}

class CIFilter {
  final String name;
  final int index;
  final MethodChannel _methodChannel;

  CIFilter._(this.name, this.index)
      : _methodChannel = MethodChannel('CIFilter-$index');

  Future<List<String>> get inputKeys async {
    try {
      return await _methodChannel.invokeListMethod<String>('inputKeys');
    } catch (error) {
      print(error);
    }
    return [];
  }

  Future<Map<String, Map<String, String>>> get attributes async {
    List<String> inputKeys = await this.inputKeys;
    Map<String, Map<String, String>> attributes = Map();
    for (var key in inputKeys) {
      attributes[key] = await _getInputKeyDetails(key);
    }
    return attributes;
  }

  Future<Map<String, String>> _getInputKeyDetails(String key) async {
    try {
      return await _methodChannel.invokeMapMethod<String, String>(
          'inputKeyDetails', key);
    } catch (error) {
      print(error);
    }
    return Map.identity();
  }

  Future<void> setFileSource(File path) async {
    try {
      return await _methodChannel.invokeMethod('setFileSource', path.path);
    } catch (error) {
      print(error);
    }
  }

  Future<void> setAssetSource(String name) async {
    try {
      return await _methodChannel.invokeMethod('setAssetSource', name);
    } catch (error) {
      print(error);
    }
  }

  Future<void> setSource(Uint8List data) async {
    try {
      return await _methodChannel.invokeMethod('setSource', data);
    } catch (error) {
      print(error);
    }
  }

  Future<Uint8List> export({File output}) async {
    try {
      return await _methodChannel.invokeMethod<Uint8List>(
          'export', output?.path);
    } catch (error) {
      print(error);
    }
    return null;
  }

  Future<Uint8List> process(
      {File input, String asset, Uint8List data, File output}) async {
    if (input != null) {
      await setFileSource(input);
      return export(output: output);
    }
    if (asset != null) {
      await setAssetSource(asset);
      return export(output: output);
    }
    if (data != null) {
      await setSource(data);
      return export(output: output);
    }
    throw 'Unexpected error';
  }
}
