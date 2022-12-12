part of native_filters;

typedef FilterVideoPreviewCreatedCallback = void Function(
  VideoPreviewController controller,
);

class FilterVideoPreview extends StatefulWidget {
  final VideoPreviewController? controller;
  final FilterVideoPreviewCreatedCallback? onCreated;

  const FilterVideoPreview({Key? key, this.onCreated, this.controller}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FilterVideoPreviewState();
}

class _FilterVideoPreviewState extends State<FilterVideoPreview> {

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return Texture(textureId: widget.controller!._textureId);
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return Texture(textureId: widget.controller!._textureId);
    }
    return Text(
      '$defaultTargetPlatform is not yet supported by the image view plugin',
    );
  }

}

class VideoPreviewController {
  late final int _textureId;
  static final VideoPreviewApi _api = VideoPreviewApi();

  VideoPreviewController._(this._textureId);

  static Future<VideoPreviewController> initialize() async {
    final message = await _api.create();
    final textureId = message.textureId;
    final controller = VideoPreviewController._(textureId);
    return controller;
  }

  Future<void> setFileSource(File file) async {
    await _api
        .setSource(PreviewSourceMessage(textureId: _textureId, path: file.path));
  }

  Future<void> setAssetSource(String name) async {
    await _api
        .setSource(PreviewSourceMessage(textureId: _textureId, path: name));
  }

  Future<void> setFilter(
    Filterable filter, {
    CIContext context = CIContext.system,
  }) async {
    await _api.setFilter(
      ActivateFilterPreviewMessage(
        textureId: _textureId,
        filterId: filter.id,
        context: context.platformKey,
      ),
    );
  }

  Future<void> dispose() async {
    await _api.dispose(PreviewDisposeMessage(textureId: _textureId));
  }

  Future<void> play() async {
    await _api.play(PreviewPlayMessage(textureId: _textureId));
  }

  Future<void> pause() async {
    await _api.pause(PreviewPauseMessage(textureId: _textureId));
  }
}
