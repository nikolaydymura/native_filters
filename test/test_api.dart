// Copyright 2022
// Autogenerated from Pigeon (v4.2.3), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, unnecessary_import
// ignore_for_file: avoid_relative_lib_imports
import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;
import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:native_filters/src/messages/messages.g.dart';

class _TestHostImageVideoFilterFactoryApiCodec extends StandardMessageCodec{
  const _TestHostImageVideoFilterFactoryApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is AppendFilterMessage) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else 
    if (value is AppendShaderFilterMessage) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else 
    if (value is CreateFilterMessage) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else 
    if (value is CreateShaderFilterMessage) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else 
    if (value is ExportDataMessage) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else 
    if (value is ExportFileMessage) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else 
    if (value is FilterMessage) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else 
    if (value is InputDataMessage) {
      buffer.putUint8(135);
      writeValue(buffer, value.encode());
    } else 
    if (value is InputDataSourceValueMessage) {
      buffer.putUint8(136);
      writeValue(buffer, value.encode());
    } else 
    if (value is InputDataValueMessage) {
      buffer.putUint8(137);
      writeValue(buffer, value.encode());
    } else 
    if (value is InputNumberListValueMessage) {
      buffer.putUint8(138);
      writeValue(buffer, value.encode());
    } else 
    if (value is InputNumberValueMessage) {
      buffer.putUint8(139);
      writeValue(buffer, value.encode());
    } else 
    if (value is InputSourceMessage) {
      buffer.putUint8(140);
      writeValue(buffer, value.encode());
    } else 
    if (value is RemoveFilterMessage) {
      buffer.putUint8(141);
      writeValue(buffer, value.encode());
    } else 
    if (value is ReplaceFilterMessage) {
      buffer.putUint8(142);
      writeValue(buffer, value.encode());
    } else 
{
      super.writeValue(buffer, value);
    }
  }
  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:       
        return AppendFilterMessage.decode(readValue(buffer)!);
      
      case 129:       
        return AppendShaderFilterMessage.decode(readValue(buffer)!);
      
      case 130:       
        return CreateFilterMessage.decode(readValue(buffer)!);
      
      case 131:       
        return CreateShaderFilterMessage.decode(readValue(buffer)!);
      
      case 132:       
        return ExportDataMessage.decode(readValue(buffer)!);
      
      case 133:       
        return ExportFileMessage.decode(readValue(buffer)!);
      
      case 134:       
        return FilterMessage.decode(readValue(buffer)!);
      
      case 135:       
        return InputDataMessage.decode(readValue(buffer)!);
      
      case 136:       
        return InputDataSourceValueMessage.decode(readValue(buffer)!);
      
      case 137:       
        return InputDataValueMessage.decode(readValue(buffer)!);
      
      case 138:       
        return InputNumberListValueMessage.decode(readValue(buffer)!);
      
      case 139:       
        return InputNumberValueMessage.decode(readValue(buffer)!);
      
      case 140:       
        return InputSourceMessage.decode(readValue(buffer)!);
      
      case 141:       
        return RemoveFilterMessage.decode(readValue(buffer)!);
      
      case 142:       
        return ReplaceFilterMessage.decode(readValue(buffer)!);
      
      default:      
        return super.readValueOfType(type, buffer);
      
    }
  }
}
abstract class TestHostImageVideoFilterFactoryApi {
  static const MessageCodec<Object?> codec = _TestHostImageVideoFilterFactoryApiCodec();

  FilterMessage createFilter(CreateFilterMessage msg);
  FilterMessage createShaderFilter(CreateShaderFilterMessage msg);
  FilterMessage createFilterGroup();
  void appendFilter(AppendFilterMessage msg);
  void appendShaderFilter(AppendShaderFilterMessage msg);
  void removeFilter(RemoveFilterMessage msg);
  void replaceFilter(ReplaceFilterMessage msg);
  void setInputData(InputDataMessage msg);
  void setInputSource(InputSourceMessage msg);
  ExportDataMessage exportData(ExportDataMessage msg);
  Future<void> exportFile(ExportFileMessage msg);
  void setNumberValue(InputNumberValueMessage msg);
  void setNumberListValue(InputNumberListValueMessage msg);
  void setDataValue(InputDataValueMessage msg);
  void setDataSourceValue(InputDataSourceValueMessage msg);
  void dispose(FilterMessage msg);
  static void setup(TestHostImageVideoFilterFactoryApi? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ImageVideoFilterFactoryApi.createFilter', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.createFilter was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final CreateFilterMessage? arg_msg = (args[0] as CreateFilterMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.createFilter was null, expected non-null CreateFilterMessage.');
          final FilterMessage output = api.createFilter(arg_msg!);
          return <Object?, Object?>{'result': output};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ImageVideoFilterFactoryApi.createShaderFilter', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.createShaderFilter was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final CreateShaderFilterMessage? arg_msg = (args[0] as CreateShaderFilterMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.createShaderFilter was null, expected non-null CreateShaderFilterMessage.');
          final FilterMessage output = api.createShaderFilter(arg_msg!);
          return <Object?, Object?>{'result': output};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ImageVideoFilterFactoryApi.createFilterGroup', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          // ignore message
          final FilterMessage output = api.createFilterGroup();
          return <Object?, Object?>{'result': output};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ImageVideoFilterFactoryApi.appendFilter', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.appendFilter was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final AppendFilterMessage? arg_msg = (args[0] as AppendFilterMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.appendFilter was null, expected non-null AppendFilterMessage.');
          api.appendFilter(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ImageVideoFilterFactoryApi.appendShaderFilter', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.appendShaderFilter was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final AppendShaderFilterMessage? arg_msg = (args[0] as AppendShaderFilterMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.appendShaderFilter was null, expected non-null AppendShaderFilterMessage.');
          api.appendShaderFilter(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ImageVideoFilterFactoryApi.removeFilter', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.removeFilter was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final RemoveFilterMessage? arg_msg = (args[0] as RemoveFilterMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.removeFilter was null, expected non-null RemoveFilterMessage.');
          api.removeFilter(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ImageVideoFilterFactoryApi.replaceFilter', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.replaceFilter was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final ReplaceFilterMessage? arg_msg = (args[0] as ReplaceFilterMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.replaceFilter was null, expected non-null ReplaceFilterMessage.');
          api.replaceFilter(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ImageVideoFilterFactoryApi.setInputData', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.setInputData was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final InputDataMessage? arg_msg = (args[0] as InputDataMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.setInputData was null, expected non-null InputDataMessage.');
          api.setInputData(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ImageVideoFilterFactoryApi.setInputSource', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.setInputSource was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final InputSourceMessage? arg_msg = (args[0] as InputSourceMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.setInputSource was null, expected non-null InputSourceMessage.');
          api.setInputSource(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ImageVideoFilterFactoryApi.exportData', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.exportData was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final ExportDataMessage? arg_msg = (args[0] as ExportDataMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.exportData was null, expected non-null ExportDataMessage.');
          final ExportDataMessage output = api.exportData(arg_msg!);
          return <Object?, Object?>{'result': output};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ImageVideoFilterFactoryApi.exportFile', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.exportFile was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final ExportFileMessage? arg_msg = (args[0] as ExportFileMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.exportFile was null, expected non-null ExportFileMessage.');
          await api.exportFile(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ImageVideoFilterFactoryApi.setNumberValue', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.setNumberValue was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final InputNumberValueMessage? arg_msg = (args[0] as InputNumberValueMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.setNumberValue was null, expected non-null InputNumberValueMessage.');
          api.setNumberValue(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ImageVideoFilterFactoryApi.setNumberListValue', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.setNumberListValue was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final InputNumberListValueMessage? arg_msg = (args[0] as InputNumberListValueMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.setNumberListValue was null, expected non-null InputNumberListValueMessage.');
          api.setNumberListValue(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ImageVideoFilterFactoryApi.setDataValue', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.setDataValue was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final InputDataValueMessage? arg_msg = (args[0] as InputDataValueMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.setDataValue was null, expected non-null InputDataValueMessage.');
          api.setDataValue(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ImageVideoFilterFactoryApi.setDataSourceValue', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.setDataSourceValue was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final InputDataSourceValueMessage? arg_msg = (args[0] as InputDataSourceValueMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.setDataSourceValue was null, expected non-null InputDataSourceValueMessage.');
          api.setDataSourceValue(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ImageVideoFilterFactoryApi.dispose', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.dispose was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final FilterMessage? arg_msg = (args[0] as FilterMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.ImageVideoFilterFactoryApi.dispose was null, expected non-null FilterMessage.');
          api.dispose(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
  }
}

class _TestVideoPreviewApiCodec extends StandardMessageCodec{
  const _TestVideoPreviewApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is ActivateFilterPreviewMessage) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else 
    if (value is PreviewCreateMessage) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else 
    if (value is PreviewDisposeMessage) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else 
    if (value is PreviewPauseMessage) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else 
    if (value is PreviewPlayMessage) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else 
    if (value is PreviewSourceMessage) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else 
{
      super.writeValue(buffer, value);
    }
  }
  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:       
        return ActivateFilterPreviewMessage.decode(readValue(buffer)!);
      
      case 129:       
        return PreviewCreateMessage.decode(readValue(buffer)!);
      
      case 130:       
        return PreviewDisposeMessage.decode(readValue(buffer)!);
      
      case 131:       
        return PreviewPauseMessage.decode(readValue(buffer)!);
      
      case 132:       
        return PreviewPlayMessage.decode(readValue(buffer)!);
      
      case 133:       
        return PreviewSourceMessage.decode(readValue(buffer)!);
      
      default:      
        return super.readValueOfType(type, buffer);
      
    }
  }
}
abstract class TestVideoPreviewApi {
  static const MessageCodec<Object?> codec = _TestVideoPreviewApiCodec();

  PreviewCreateMessage create();
  void setFilter(ActivateFilterPreviewMessage msg);
  void setSource(PreviewSourceMessage msg);
  void play(PreviewPlayMessage msg);
  void pause(PreviewPauseMessage msg);
  void dispose(PreviewDisposeMessage msg);
  static void setup(TestVideoPreviewApi? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPreviewApi.create', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          // ignore message
          final PreviewCreateMessage output = api.create();
          return <Object?, Object?>{'result': output};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPreviewApi.setFilter', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.VideoPreviewApi.setFilter was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final ActivateFilterPreviewMessage? arg_msg = (args[0] as ActivateFilterPreviewMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.VideoPreviewApi.setFilter was null, expected non-null ActivateFilterPreviewMessage.');
          api.setFilter(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPreviewApi.setSource', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.VideoPreviewApi.setSource was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PreviewSourceMessage? arg_msg = (args[0] as PreviewSourceMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.VideoPreviewApi.setSource was null, expected non-null PreviewSourceMessage.');
          api.setSource(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPreviewApi.play', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.VideoPreviewApi.play was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PreviewPlayMessage? arg_msg = (args[0] as PreviewPlayMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.VideoPreviewApi.play was null, expected non-null PreviewPlayMessage.');
          api.play(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPreviewApi.pause', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.VideoPreviewApi.pause was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PreviewPauseMessage? arg_msg = (args[0] as PreviewPauseMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.VideoPreviewApi.pause was null, expected non-null PreviewPauseMessage.');
          api.pause(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.VideoPreviewApi.dispose', codec, binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMockMessageHandler(null);
      } else {
        channel.setMockMessageHandler((Object? message) async {
          assert(message != null, 'Argument for dev.flutter.pigeon.VideoPreviewApi.dispose was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PreviewDisposeMessage? arg_msg = (args[0] as PreviewDisposeMessage?);
          assert(arg_msg != null, 'Argument for dev.flutter.pigeon.VideoPreviewApi.dispose was null, expected non-null PreviewDisposeMessage.');
          api.dispose(arg_msg!);
          return <Object?, Object?>{};
        });
      }
    }
  }
}
