class AsyncSnapshot<T> {
  final T? data;
  final dynamic error;
  final bool hasData;
  final bool hasError;

  AsyncSnapshot({
    this.data,
    this.error,
    this.hasData = true,
    this.hasError = false,
  });
}
