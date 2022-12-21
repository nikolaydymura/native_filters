part of native_filters;

extension on String {
  bool get isVideo {
    return toLowerCase().endsWith('.mp4') || toLowerCase().endsWith('.mov');
  }

  bool get isImage {
    return toLowerCase().endsWith('.png') || toLowerCase().endsWith('.jpg') || toLowerCase().endsWith('.jpeg');
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

  Future<void> export(
    File output, {
    CIContext context = CIContext.system,
  }) async {
    if (output.path.isVideo) {
      await _api.exportFile(
        ExportFileMessage(
          filterId: id,
          path: output.path,
          video: true,
          context: context.platformKey,
        ),
      );
    } else if (output.path.isImage) {
      await _api.exportFile(
        ExportFileMessage(
          filterId: id,
          path: output.path,
          video: false,
          context: context.platformKey,
        ),
      );
    } else {
      throw 'Unsupported format $output';
    }
  }
}

enum CIContext { egl, mlt, system }

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
