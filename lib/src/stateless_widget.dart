import 'dart:html';

import 'package:wupper/src/widget.dart';

abstract class StatelessWidget extends Widget {
  Widget? child;

  /// Method which needs to be defined by the developer to describe the UI
  /// using HTML Elements. It is **not** recommended to use this method to
  /// append your widget in the [build] method of another widget! Use
  /// [widgetElement] for this!
  Widget build(BuildContext context);

  StatelessWidget() {
    initState();
    final childContext = BuildContext(this, callbacks: context.callbacks);
    child = build(childContext);
  }

  static const String _dataWidgetTypeKey = 'data-widget-type';
  static const String _dataWidgetTypeId = 'data-widget-id';

  /// Checks if this widget instance is still mounted to the DOM.
  bool get mounted =>
      appNode.querySelector('[$_dataWidgetTypeId="${hashCode.toString()}"]') !=
      null;

  @override
  Element render() {
    assert(child != null);
    element = child!.render();
    if (element!.hasAttribute(_dataWidgetTypeKey) ||
        element!.hasAttribute(_dataWidgetTypeId)) {
      element = SpanElement()..children = [element!];
    }
    return element!
      ..setAttribute(_dataWidgetTypeKey, runtimeType.toString())
      ..setAttribute(_dataWidgetTypeId, hashCode.toString());
  }

  @override
  String toString() => child == null ? '' : child.toString();
}
