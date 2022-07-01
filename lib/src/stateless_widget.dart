import 'dart:html';

import 'package:wupper/src/widget.dart';

abstract class StatelessWidget extends Widget {
  Widget? child;

  /// Method which needs to be defined by the developer to describe the UI
  /// using HTML Elements. It is **not** recommended to use this method to
  /// append your widget in the [build] method of another widget! Use
  /// [widgetElement] for this!
  Widget build(BuildContext context);

  StatelessWidget();

  void inflate(BuildContext context) {
    final childContext = BuildContext(this, callbacks: context.callbacks);
    initState();
    child = build(childContext);

    if (child! is StatelessWidget) (child as StatelessWidget).inflate(context);
  }

  static const String _dataWidgetTypeKey = 'data-widget-type';
  static const String _dataWidgetTypeId = 'data-widget-id';

  /// Checks if this widget instance is still mounted to the DOM.
  bool get mounted =>
      appNode.querySelector('[$_dataWidgetTypeId="${hashCode.toString()}"]') !=
      null;

  @override
  Element render() {
    print("render ${this} child: $child");
    assert(child != null);
    childElement = child!.render();
    if (childElement!.hasAttribute(_dataWidgetTypeKey) ||
        childElement!.hasAttribute(_dataWidgetTypeId)) {
      childElement = SpanElement()..children = [childElement!];
    }
    return childElement!
      ..setAttribute(_dataWidgetTypeKey, runtimeType.toString())
      ..setAttribute(_dataWidgetTypeId, hashCode.toString());
  }

  @override
  String toString() => child == null ? '' : child.toString();
}
