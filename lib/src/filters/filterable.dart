part of native_filters;

extension on String {
  bool get isVideo {
    return endsWith('.mp4') || endsWith('.mov');
  }

  bool get isImage {
    return endsWith('.png') || endsWith('.jpg') || endsWith('.jpeg');
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

  Future<Uint8List?> get binaryOutput async {
    final result = await _api.exportData(FilterMessage(filterId: id));
    return result.data;
  }

  Future<void> export(File output) async {
    if (output.path.isVideo) {
      await _api.exportFile(
        ExportFileMessage(filterId: id, path: output.path, video: true),
      );
    } else if (output.path.isImage) {
      await _api.exportFile(
        ExportFileMessage(filterId: id, path: output.path, video: false),
      );
    } else {
      throw 'Unsupported format $output';
    }
  }
}
