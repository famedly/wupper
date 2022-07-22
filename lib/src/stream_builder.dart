import 'dart:async';

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

class StreamBuilder<T> extends StatefulWidget {
  final Stream<T> stream;
  final Widget Function(BuildContext context, AsyncSnapshot<T> value) builder;

  StreamBuilder({required this.stream, required this.builder});

  @override
  StateWidget<StatefulWidget> createState() => _StreamBuilderState();
}

class _StreamBuilderState extends StateWidget<StreamBuilder> {
  late final StreamSubscription _streamSubscription;
  final State<AsyncSnapshot> _snapshot = State(
    AsyncSnapshot(
      hasData: false,
      hasError: false,
      error: null,
      data: null,
    ),
  );

  @override
  void initState() {
    _streamSubscription =
        widget.stream.listen(_listener, onError: _errorListener);
    super.initState();
  }

  void _listener(data) {
    if (!_snapshot.hasListener) {
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
    if (!_snapshot.hasListener) {
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
  Widget build(context) => _snapshot.bind(
      context, (context, snap) => widget.builder(context, snap));
}
