import 'dart:async';
import 'dart:html';

import 'package:wupper/wupper.dart';

import 'async_snapshot.dart';

/// Similar to Flutters StreamBuilder but without AsyncSnapshot. Constantly
/// rebuild something depending of the last value of a stream. Optional you can
/// set an errorBuilder to handle errors.
///
/// ### Example:
///
/// ```dart
/// StreamBuilder<String>(
///   stream: someDataStream,
///   builder: (AsyncSnapshot<String> snapshot, Widget parent) =>
///     divElement(text: snapshot.data ?? snapshot.error?.toString() ?? 'No data yet'),
/// ).appendTo(this);
/// ```
class StreamBuilder<T> extends Widget {
  final Stream<T> stream;
  final Element Function(AsyncSnapshot<T> value, Widget parent) builder;
  late final StreamSubscription _streamSubscription;
  late AsyncSnapshot<T> _snapshot;

  StreamBuilder({required this.stream, required this.builder});

  @override
  void initState() {
    _streamSubscription = stream.listen(_listener, onError: _errorListener);
    super.initState();
  }

  void _listener(T? data) {
    if (!mounted) {
      _streamSubscription.cancel();
      return;
    }
    setState(() {
      _snapshot = AsyncSnapshot(
        hasData: true,
        data: data,
      );
    });
  }

  void _errorListener(Object? error) {
    if (!mounted) {
      _streamSubscription.cancel();
      return;
    }
    setState(() {
      _snapshot = AsyncSnapshot(
        hasError: true,
        error: error,
        hasData: _snapshot.hasData,
        data: _snapshot.data,
      );
    });
  }

  @override
  Element build() => builder(_snapshot, this);
}
