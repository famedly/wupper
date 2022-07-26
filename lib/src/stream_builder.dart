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
  StateWidget<StreamBuilder<T>> createState() => _StreamBuilderState<T>();
}

class _StreamBuilderState<T> extends StateWidget<StreamBuilder<T>> {
  late final StreamSubscription _streamSubscription;
  AsyncSnapshot<T> _snapshot = AsyncSnapshot(
    hasData: false,
    hasError: false,
    error: null,
    data: null,
  );

  @override
  void initState() {
    _streamSubscription =
        widget.stream.listen(_listener, onError: _errorListener);
    super.initState();
  }

  void _listener(data) {
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
  Widget build(context) => widget.builder(context, _snapshot);
}
