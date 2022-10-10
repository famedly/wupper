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

  const FutureBuilder({required this.future, required this.builder}) : super();

  @override
  StateWidget<FutureBuilder<T>> createState() => _FutureBuilderState<T>();
}

class _FutureBuilderState<T> extends StateWidget<FutureBuilder<T>> {
  AsyncSnapshot<T> snapshot = AsyncSnapshot(
    hasData: false,
    hasError: false,
    error: null,
    data: null,
  );
  void _run() async {
    try {
      final data = await widget.future;
      snapshot = AsyncSnapshot(hasData: true, data: data);
    } catch (error) {
      snapshot = AsyncSnapshot(hasError: true, error: error);
    }
    setState(() {});
  }

  @override
  initState() {
    _run();
    super.initState();
  }

  @override
  Widget build(context) {
    return widget.builder(context, snapshot);
  }
}
