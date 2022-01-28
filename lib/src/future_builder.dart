import 'dart:async';
import 'dart:html';

import 'package:wupper/wupper.dart';

import 'async_snapshot.dart';

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
  final Element Function(AsyncSnapshot<T> snapshot, Widget parent) builder;

  late AsyncSnapshot<T> _snapshot;

  FutureBuilder({required this.future, required this.builder});

  void _run() async {
    try {
      final data = await future;
      _snapshot = AsyncSnapshot(hasData: true, data: data);
    } catch (error) {
      _snapshot = AsyncSnapshot(hasError: true, error: error);
    } finally {
      if (mounted) setState(() {});
    }
  }

  @override
  initState() {
    _snapshot = AsyncSnapshot(hasData: false, hasError: false);
    _run();
    super.initState();
  }

  @override
  Element build() {
    return builder(_snapshot, this);
  }
}
