import 'dart:async';
import 'dart:html';

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
class FutureBuilder<T> extends Widget {
  final Future<T> future;
  final Element Function(BuildContext context, AsyncSnapshot<T> snapshot) builder;

  final State<AsyncSnapshot<T>> _snapshot = State(
    AsyncSnapshot(
      hasData: false,
      hasError: false,
      error: null,
      data: null,
    ),
  );

  FutureBuilder({required this.future, required this.builder});

  void _run() async {
    try {
      final data = await future;
      _snapshot.set(AsyncSnapshot(hasData: true, data: data));
    } catch (error) {
      _snapshot.set(AsyncSnapshot(hasError: true, error: error));
    }
  }

  @override
  initState() {
    _run();
    super.initState();
  }

  @override
  Element build(context) {
    return _snapshot.bind(context, (context, _snapshot) => builder(context, _snapshot));
  }
}
