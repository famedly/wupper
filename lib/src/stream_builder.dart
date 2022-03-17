import 'dart:async';
import 'dart:html';

import 'package:wupper/wupper.dart';

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
  final State<AsyncSnapshot<T>> _snapshot = State(
    AsyncSnapshot(
      hasData: false,
      hasError: false,
      error: null,
      data: null,
    ),
  );

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
    _snapshot.set(
      AsyncSnapshot(
        hasData: true,
        data: data,
      ),
    );
  }

  void _errorListener(Object? error) {
    if (!mounted) {
      _streamSubscription.cancel();
      return;
    }
    _snapshot.set(
      AsyncSnapshot(
        hasError: true,
        error: error,
        hasData: _snapshot.state.hasData,
        data: _snapshot.state.data,
      ),
    );
  }

  @override
  Element build() => _snapshot.bind((_snapshot) => builder(_snapshot, this));
}
