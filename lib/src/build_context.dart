import 'dart:html';
import 'package:wupper/wupper.dart';

/// BuildContext is used to know our position in the widget tree.
/// Also it’s used to set the callbacks needed when building or setting the widget
/// the state.
class BuildContext {
  // To know the position of the widget
  Widget? widget;
  Element? _element;
  Element? get element => _element;

  /// Search for the first non null child element
  Element? getElement() {
    return _element ?? child?.getElement();
  }

  // In order to know the position of this widget in the context
  BuildContext? parent;
  BuildContext? child;

  List<BuildContext>? domChildren;

  StateWidget<StatefulWidget>? widgetState;

  BuildContext() {
    callbacks = [];
  }

  BuildContext.fromParent(this.parent, {List<Function>? callbacks}) {
    this.callbacks = callbacks ?? parent?.callbacks ?? [];
  }

  late List<Function> callbacks;

  bool get mounted => getElement()?.isConnected ?? false;

  /// Add a callback which will be executed after initial build or after set state.
  void addPostFrameCallback(Function callback) {
    callbacks.add(callback);

    if (parent == null) {
      window.console.warn(
          "Added callback when parent is null. now: ${callbacks.length} callback");
    }
  }

  /// Execute all the callbacks and clear the callback list.
  void executeCallbacks({BuildContext? oldContext}) {
    while (callbacks.isNotEmpty) {
      callbacks.removeLast().call();
    }

    oldContext?.importContext(this);
  }

  /// Looks up the widget tree until it finds a parent of this type or otherwise
  /// throws an exception. Make sure that this widget has been appended by the
  /// [appendTo()] method first.
  T findState<T>() {
    if (parent == null) {
      throw Exception(
          'Unable to find parent of type $T in widget tree. Have you appended this widget with `.build()` instead of `.appendTo(this)` maybe?');
    }
    if (widgetState is T) {
      return widgetState as T;
    }
    return parent!.findState<T>();
  }

  BuildContext createChildContext(
      {bool copyOldProperties = true,
      bool copyOldElement = false,
      bool setChild = true,
      BuildContext? target}) {
    final childContext = BuildContext.fromParent(this, callbacks: callbacks);

    // allow overriding child. Needed for html_element_constructor
    final child = target ?? this.child;

    // try to preserve child context
    if (child?.child != null && copyOldProperties) {
      childContext.child = child?.child;
    }

    if (copyOldProperties) {
      childContext.widget = child?.widget;
      childContext.widgetState = child?.widgetState;
      childContext.domChildren = child?.domChildren;
    }

    if (copyOldElement) {
      childContext._element = child?._element;
    }

    if (setChild) {
      if (target == null) {
        this.child = childContext;
      }
    }

    return childContext;
  }

  static BuildContext build(BuildContext context) {
    return context.createChildContext();
  }

  /// Create a new context object with the given attribute while overriding
  /// callbacks.
  BuildContext overrideCallbacks() {
    final newContext = BuildContext();
    newContext.importContext(this);
    return newContext;
  }

  void importContext(BuildContext newContext) {
    child = newContext.child;
    parent = newContext.parent;
    domChildren = newContext.domChildren;
    widget = newContext.widget;
    _element = newContext._element;
    widgetState = newContext.widgetState;
  }

  /// Determine if the newly rendered widget is different from the previous one.
  bool _shouldReRender(Widget newWidget) {
    return child?.widget.hashCode != newWidget.hashCode ||
        child?.widget?.key != newWidget.key;
  }

  /// Ask for a new render of the child element if we need to update it
  bool cachedInflate(Widget newWidget) {
    if (_shouldReRender(newWidget)) {
      /// If we have a child of the same type, we might want to forward also the
      /// [domChildren] and [widgetState]
      final childContext = createChildContext(
          copyOldProperties:
              newWidget.runtimeType == child?.widget.runtimeType);
      newWidget.inflate(childContext);
      return true;
    }

    return false;
  }

  // DOM manipulation functions

  void insertDomChildren(int i, BuildContext context) {
    final newElement = context.getElement();

    if (newElement != null) {
      getElement()?.children.insert(i, newElement);
    }
    domChildren!.insert(i, context);
  }

  void deleteDomChildren(int i) {
    getElement()?.children.removeAt(i);
    domChildren!.removeAt(i);
  }

  void replaceDomChildrenWith(int i, BuildContext childContext) {
    getElement()!.children[i].replaceWith(childContext.getElement()!);
    getElement()!.children[i] = childContext.getElement()!;
    domChildren![i] = childContext;
  }

  /// Set the element field and replace the previous DOM element if necessary
  void setElement(Element element) {
    _element?.replaceWith(element);
    _element = element;
  }
}
