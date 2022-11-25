import 'package:wupper/wupper.dart';

/// Rebuilds every time the `value` changes.
class ValueNotifierBuilder<T> extends StatefulWidget {
  final ValueNotifier<T> value;
  final Widget Function(BuildContext context, T value) builder;

  const ValueNotifierBuilder({
    required this.value,
    required this.builder,
  });

  @override
  StateWidget<ValueNotifierBuilder<T>> createState() =>
      _ValueNotifierBuilderState<T>();
}

class _ValueNotifierBuilderState<T>
    extends StateWidget<ValueNotifierBuilder<T>> {
  void _listener() {
    if (!mounted) {
      widget.value.removeListener(_listener);
      return;
    }
    setState(() {});
  }

  @override
  void initState() {
    widget.value.addListener(_listener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => widget.builder(
        context,
        widget.value.value,
      );
}
