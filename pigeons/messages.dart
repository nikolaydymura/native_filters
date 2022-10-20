// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/src/messages/messages.g.dart',
  dartTestOut: 'test/test_api.dart',
  objcHeaderOut: 'ios/Classes/messages.g.h',
  objcSourceOut: 'ios/Classes/messages.g.m',
  objcOptions: ObjcOptions(
    prefix: 'FLT',
  ),
  javaOut: 'android/src/main/java/nd/flutter/plugins/ivfilters/Messages.java',
  javaOptions: JavaOptions(
    package: 'nd.flutter.plugins.ivfilters',
  ),
  copyrightHeader: 'pigeons/copyright.txt',
))
class CreateFilterGroupMessage {
  CreateFilterGroupMessage(this.filterId);
  int filterId;
}

class CreateFilterMessage {
  CreateFilterMessage(this.filterId, this.name);
  String name;
  int filterId;
}

class AppendFilterMessage {
  AppendFilterMessage(this.filterId, this.name);
  String name;
  int filterId;
}

class RemoveFilterMessage {
  RemoveFilterMessage(this.filterId, this.filterIndex);
  int filterId;
  int filterIndex;
}

class ReplaceFilterMessage {
  ReplaceFilterMessage(this.filterId, this.filterIndex, this.name);
  int filterId;
  int filterIndex;
  String name;
}

class InputSourceMessage {
  InputSourceMessage(this.filterId, this.path, this.asset, this.video);
  int filterId;
  String path;
  bool asset;
  bool video;
}

class InputDataMessage {
  InputDataMessage(this.filterId, this.data);
  int filterId;
  Uint8List data;
}

class ExportFileMessage {
  ExportFileMessage(this.filterId, this.path, this.video);
  int filterId;
  String path;
  bool video;
}

class ExportDataMessage {
  ExportDataMessage(this.filterId, this.data);
  int filterId;
  Uint8List data;
}

class InputNumberValueMessage {
  InputNumberValueMessage(this.filterId, this.filterIndex, this.key, this.value);
  int filterId;
  int filterIndex;
  String key;
  double value;
}

class InputNumberListValueMessage {
  InputNumberListValueMessage(this.filterId, this.filterIndex, this.key, this.value);
  int filterId;
  int filterIndex;
  String key;
  List<double?> value;
}

class InputDataValueMessage {
  InputDataValueMessage(this.filterId, this.filterIndex, this.key, this.value);
  int filterId;
  int filterIndex;
  String key;
  Uint8List value;
}

class InputDataSourceValueMessage {
  InputDataSourceValueMessage(this.filterId, this.filterIndex, this.key, this.value);
  int filterId;
  int filterIndex;
  String key;
  String value;
}

class FilterMessage {
  FilterMessage(this.filterId);
  int filterId;
}

@HostApi(dartHostTestHandler: 'TestHostImageVideoFilterFactoryApi')
abstract class ImageVideoFilterFactoryApi {
  @ObjCSelector('createFilter:')
  FilterMessage createFilter(CreateFilterMessage msg);
  @ObjCSelector('createFilterGroup:')
  FilterMessage createFilterGroup(CreateFilterGroupMessage msg);
  @ObjCSelector('appendFilter:')
  void appendFilter(AppendFilterMessage msg);
  @ObjCSelector('removeFilter:')
  void removeFilter(RemoveFilterMessage msg);
  @ObjCSelector('replaceFilter:')
  void replaceFilter(ReplaceFilterMessage msg);
  @ObjCSelector('setInputData:')
  void setInputData(InputDataMessage msg);
  @ObjCSelector('setInputSource:')
  void setInputSource(InputSourceMessage msg);
  @ObjCSelector('exportData:')
  ExportDataMessage exportData(FilterMessage msg);
  @ObjCSelector('exportFile:')
  @async
  void exportFile(ExportFileMessage msg);
  @ObjCSelector('setNumberValue:')
  void setNumberValue(InputNumberValueMessage msg);
  @ObjCSelector('setNumberListValue:')
  void setNumberListValue(InputNumberListValueMessage msg);
  @ObjCSelector('setDataValue:')
  void setDataValue(InputDataValueMessage msg);
  @ObjCSelector('setDataSourceValue:')
  void setDataSourceValue(InputDataSourceValueMessage msg);
  @ObjCSelector('disposeFilter:')
  void dispose(FilterMessage msg);
}