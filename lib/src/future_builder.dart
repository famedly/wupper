import 'dart:async';

import 'package:wupper/wupper.dart';

/// Similar to Flutters FutureBuilder. Build something
/// depending of the result of a future.
///
/// ### Example:
///
/// ```dart
/// FutureBuilder<String>(
///   future: loadDataFromServer(),
///   builder: (AsyncSnapshot<String> snapshot, Widget parent) =>
///     divElement(text: snapshot.data ?? snapshot.error?.toString() ?? 'No data yet'),
/// ).appendTo(this);
/// ```

class FutureBuilder<T> extends StatefulWidget {
  final Future<T> future;
  final Widget Function(BuildContext context, AsyncSnapshot<T> snapshot)
      builder;

  final State<AsyncSnapshot<T>> snapshot = State(
    AsyncSnapshot(
      hasData: false,
      hasError: false,
      error: null,
      data: null,
    ),
  );

  FutureBuilder({required this.future, required this.builder});

  @override
  StateWidget<FutureBuilder> createState() => _FutureBuilderState();
}

class _FutureBuilderState extends StateWidget<FutureBuilder> {
  void _run() async {
    try {
      final data = await widget.future;
      widget.snapshot.set(AsyncSnapshot(hasData: true, data: data));
    } catch (error) {
      widget.snapshot.set(AsyncSnapshot(hasError: true, error: error));
    }
  }

  @override
  initState() {
    _run();
    super.initState();
  }

  @override
  Widget build(context) {
    return widget.snapshot.bind(
        context, (context, snapshot) => widget.builder(context, snapshot));
  }
}
