part of cupertino_native_filters;

abstract class FilterBasePreviewController {
  final MethodChannel _channel;
  final int filterId;

  FilterBasePreviewController(String name, this.filterId)
      : this._channel = new MethodChannel(name) {
    this._channel.invokeMethod('setFilter', filterId);
  }

  Future<void> dispose() async {
    return _channel.invokeMethod('release');
  }

  Future<void> update() async {
    return _channel.invokeMethod('update');
  }
}
