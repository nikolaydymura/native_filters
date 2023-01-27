part of native_filters;

extension on String {
  bool get isVideo {
    return toLowerCase().endsWith('.mp4') || toLowerCase().endsWith('.mov');
  }

  bool get isImage {
    return toLowerCase().endsWith('.png') ||
        toLowerCase().endsWith('.jpg') ||
        toLowerCase().endsWith('.jpeg');
  }
}

abstract class Filterable {
  final ImageVideoFilterFactoryApi _api;
  final int id;

  Filterable._(this.id, this._api);

  Future<void> setFileSource(File file) async {
    if (file.path.isVideo) {
      await _api.setInputSource(
        InputSourceMessage(
          filterId: id,
          path: file.path,
          asset: false,
          video: true,
        ),
      );
    } else if (file.path.isImage) {
      await _api.setInputSource(
        InputSourceMessage(
          filterId: id,
          path: file.path,
          asset: false,
          video: false,
        ),
      );
    } else {
      throw 'Unsupported format $file';
    }
  }

  Future<void> setAssetSource(String name) async {
    if (name.isVideo) {
      await _api.setInputSource(
        InputSourceMessage(
          filterId: id,
          path: name,
          asset: true,
          video: true,
        ),
      );
    } else if (name.isImage) {
      await _api.setInputSource(
        InputSourceMessage(
          filterId: id,
          path: name,
          asset: true,
          video: false,
        ),
      );
    } else {
      throw 'Unsupported format $name';
    }
  }

  Future<void> setSource(Uint8List data) async {
    await _api.setInputData(InputDataMessage(filterId: id, data: data));
  }

  Future<Uint8List?> binaryOutput({
    CIContext context = CIContext.system,
  }) async {
    final result = await _api.exportData(
      ExportDataMessage(filterId: id, context: context.platformKey),
    );
    return result.data;
  }

  Future<Stream<double>?> export(
    File output, {
    CIContext context = CIContext.system,
    AVAssetExportPreset? presetName,
  }) async {
    if (output.path.isVideo) {
      final sessionId = await _api.exportVideoFile(
        ExportFileMessage(
          filterId: id,
          path: output.path,
          context: context.platformKey,
          presetName: presetName?.platformKey,
        ),
      );
      return EventChannel('AVAssetExportSession_$sessionId')
          .receiveBroadcastStream()
          .map((event) => event as double)
          .distinct();
    } else if (output.path.isImage) {
      await _api.exportImageFile(
        ExportFileMessage(
          filterId: id,
          path: output.path,
          context: context.platformKey,
        ),
      );
      return null;
    } else {
      throw 'Unsupported format $output';
    }
  }
}

enum CIContext { egl, mlt, system }

enum AVAssetExportPreset {
  //Quality Presets
  lowQuality,
  mediumQuality,
  highestQuality,
  hevcHighestQuality,
  hevcHighestQualityWithAlpha,

//Size Presets
  preset640x480,
  preset960x540,
  preset1280x720,
  preset1920x1080,
  preset3840x2160,

//HEVC Size Presets
  hevc1920x1080,
  hevc3840x2160,
  hevc1920x1080WithAlpha,
  hevc3840x2160WithAlpha,
  hevc7680x4320,

//M4V Presets
  appleM4V480pSD,
  appleM4V720pHD,
  appleM4V1080pHD,
  appleM4ViPod,
  appleM4VAppleTV,
  appleM4VCellular,
  appleM4VWiFi,

//Apple ProRes Presets
  appleProRes422LPCM,
  appleProRes4444LPCM,

//Passthrough Presets
  passthrough,

//Audio-only Presets
  appleM4A,
}

extension on AVAssetExportPreset {
  String get platformKey {
    switch (this) {
      case AVAssetExportPreset.lowQuality:
        return 'AVAssetExportPresetLowQuality';
      case AVAssetExportPreset.mediumQuality:
        return 'AVAssetExportPresetMediumQuality';
      case AVAssetExportPreset.highestQuality:
        return 'AVAssetExportPresetHighestQuality';

      case AVAssetExportPreset.hevcHighestQuality:
        return 'AVAssetExportPresetHEVCHighestQuality';

      case AVAssetExportPreset.hevcHighestQualityWithAlpha:
        return 'AVAssetExportPresetHEVCHighestQualityWithAlpha';

      case AVAssetExportPreset.preset640x480:
        return 'AVAssetExportPreset640x480';

      case AVAssetExportPreset.preset960x540:
        return 'AVAssetExportPreset960x540';

      case AVAssetExportPreset.preset1280x720:
        return 'AVAssetExportPreset1280x720';

      case AVAssetExportPreset.preset1920x1080:
        return 'AVAssetExportPreset1920x1080';

      case AVAssetExportPreset.preset3840x2160:
        return 'AVAssetExportPreset3840x2160';

      case AVAssetExportPreset.hevc1920x1080:
        return 'AVAssetExportPresetHEVC1920x1080';

      case AVAssetExportPreset.hevc3840x2160:
        return 'AVAssetExportPresetHEVC3840x2160';

      case AVAssetExportPreset.hevc1920x1080WithAlpha:
        return 'AVAssetExportPresetHEVC1920x1080WithAlpha';

      case AVAssetExportPreset.hevc3840x2160WithAlpha:
        return 'AVAssetExportPresetHEVC3840x2160WithAlpha';

      case AVAssetExportPreset.hevc7680x4320:
        return 'AVAssetExportPresetHEVC7680x4320';

      case AVAssetExportPreset.appleM4V480pSD:
        return 'AVAssetExportPresetAppleM4V480pSD';

      case AVAssetExportPreset.appleM4V720pHD:
        return 'AVAssetExportPresetAppleM4V720pHD';

      case AVAssetExportPreset.appleM4V1080pHD:
        return 'AVAssetExportPresetAppleM4V1080pHD';

      case AVAssetExportPreset.appleM4ViPod:
        return 'AVAssetExportPresetAppleM4ViPod';

      case AVAssetExportPreset.appleM4VAppleTV:
        return 'AVAssetExportPresetAppleM4VAppleTV';

      case AVAssetExportPreset.appleM4VCellular:
        return 'AVAssetExportPresetAppleM4VCellular';

      case AVAssetExportPreset.appleM4VWiFi:
        return 'AVAssetExportPresetAppleM4VWiFi';

      case AVAssetExportPreset.appleProRes422LPCM:
        return 'AVAssetExportPresetAppleProRes422LPCM';

      case AVAssetExportPreset.appleProRes4444LPCM:
        return 'AVAssetExportPresetAppleProRes4444LPCM';

      case AVAssetExportPreset.passthrough:
        return 'AVAssetExportPresetPassthrough';

      case AVAssetExportPreset.appleM4A:
        return 'AVAssetExportPresetAppleM4A';
    }
  }
}

extension on CIContext {
  String get platformKey {
    switch (this) {
      case CIContext.egl:
        return 'openGLES2';
      case CIContext.mlt:
        return 'MLT';
      case CIContext.system:
        return 'system';
    }
  }
}
