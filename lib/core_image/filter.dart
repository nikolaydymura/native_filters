import 'dart:async';
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
      attributes[key] = await this.getInputKeyDetails(key);
    }
    return attributes;
  }

  Future<Map<String, String>> getInputKeyDetails(String key) async {
    try {
      return await _methodChannel.invokeMapMethod<String, String>('inputKeyDetails', key);
    } catch (error) {
      print(error);
    }
    return Map.identity();
  }
}
