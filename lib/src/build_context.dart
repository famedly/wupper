import 'dart:html';

import 'package:meta/meta.dart';
import 'package:wupper/wupper.dart';

/// BuildContext is used to know our position in the widget tree.
/// Also it’s used to set the callbacks needed when building or setting the widget
/// the state.
class BuildContext {
  // To know the position of the widget
  Widget? widget;
  Element? element;

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

  /// Add a callback which will be executed after initial build or after set state.
  void addPostFrameCallback(Function callback) {
    callbacks.add(callback);

    if (parent == null) {
      print(
          "WARNING: Added callback when parent is null. now: ${callbacks.length} callback");
    }
  }

  /// Execute all the callbacks and clear the callback list.
  @protected
  void executeCallbacks({BuildContext? oldContext}) {
    while (callbacks.isNotEmpty) {
      callbacks.removeLast()();
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

  BuildContext createChildContext() {
    final childContext = BuildContext.fromParent(this, callbacks: callbacks);
    child = childContext;
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
    element = newContext.element;
    widgetState = newContext.widgetState;
  }
}