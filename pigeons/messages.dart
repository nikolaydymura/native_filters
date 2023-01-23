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

class CreateShaderFilterMessage {
  CreateShaderFilterMessage(this.shader, this.params, {this.twoInput = false, this.vertex});
  String? vertex;
  String shader;
  bool twoInput;
  Map<String?, Map<String?, Object?>?> params;
}

class CreateFilterMessage {
  CreateFilterMessage(this.name);
  String name;
}

class AppendFilterMessage {
  AppendFilterMessage(this.filterId, this.name);
  String name;
  int filterId;
}

class AppendShaderFilterMessage {
  AppendShaderFilterMessage(this.filterId, this.shader, this.params, {this.vertex});
  int filterId;
  String? vertex;
  String shader;
  Map<String?, Map<String?, Object?>?> params;
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
  ExportFileMessage(this.filterId, this.path, this.video, this.context, {this.presetName});
  int filterId;
  String path;
  bool video;
  String context;
  String? presetName;
}

class ExportDataMessage {
  ExportDataMessage(this.filterId, this.data, this.context);
  int filterId;
  Uint8List? data;
  String context;
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
  InputDataValueMessage(this.filterId, this.filterIndex, this.key, this.value, this.lut8x64, this.process);
  int filterId;
  int filterIndex;
  String key;
  Uint8List value;
  bool lut8x64;
  bool process;
}

class InputDataSourceValueMessage {
  InputDataSourceValueMessage(this.filterId, this.filterIndex, this.key, this.value, this.lut8x64, this.process);
  int filterId;
  int filterIndex;
  String key;
  String value;
  bool lut8x64;
  bool process;
}

class FilterMessage {
  FilterMessage(this.filterId);
  int filterId;
}

@HostApi(dartHostTestHandler: 'TestHostImageVideoFilterFactoryApi')
abstract class ImageVideoFilterFactoryApi {
  @ObjCSelector('createFilter:')
  FilterMessage createFilter(CreateFilterMessage msg);
  @ObjCSelector('createShaderFilter:')
  FilterMessage createShaderFilter(CreateShaderFilterMessage msg);
  @ObjCSelector('createFilterGroup')
  FilterMessage createFilterGroup();
  @ObjCSelector('appendFilter:')
  void appendFilter(AppendFilterMessage msg);
  @ObjCSelector('appendShaderFilter:')
  void appendShaderFilter(AppendShaderFilterMessage msg);
  @ObjCSelector('removeFilter:')
  void removeFilter(RemoveFilterMessage msg);
  @ObjCSelector('replaceFilter:')
  void replaceFilter(ReplaceFilterMessage msg);
  @ObjCSelector('setInputData:')
  void setInputData(InputDataMessage msg);
  @ObjCSelector('setInputSource:')
  void setInputSource(InputSourceMessage msg);
  @ObjCSelector('exportData:')
  ExportDataMessage exportData(ExportDataMessage msg);
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

class PreviewCreateMessage {
  PreviewCreateMessage(this.textureId);
  int textureId;
}

class PreviewFilterMessage {
  PreviewFilterMessage(this.textureId, this.filterId);
  int textureId;
  int filterId;
}

class ActivateFilterPreviewMessage {
  ActivateFilterPreviewMessage(this.textureId, this.filterId, this.context);
  int textureId;
  int filterId;
  String context;
}

class PreviewSourceMessage {
  PreviewSourceMessage(this.textureId, this.path);
  int textureId;
  String path;
}

class PreviewPlayMessage {
  PreviewPlayMessage(this.textureId);
  int textureId;
}

class PreviewPauseMessage {
  PreviewPauseMessage(this.textureId);
  int textureId;
}

class PreviewDisposeMessage {
  PreviewDisposeMessage(this.textureId);
  int textureId;
}

@HostApi(dartHostTestHandler: 'TestVideoPreviewApi')
abstract class VideoPreviewApi {
  @ObjCSelector('create')
  PreviewCreateMessage create();
  @ObjCSelector('setFilter:')
  void setFilter(ActivateFilterPreviewMessage msg);
  @ObjCSelector('setSource:')
  void setSource(PreviewSourceMessage msg);
  @ObjCSelector('play:')
  void play(PreviewPlayMessage msg);
  @ObjCSelector('pause:')
  void pause(PreviewPauseMessage msg);
  @ObjCSelector('dispose:')
  void dispose(PreviewDisposeMessage msg);
}
