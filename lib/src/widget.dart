// MIT License

// Copyright (c) 2021 Famedly

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import 'dart:html';

import 'html_element_constructors.dart';

/// the root node of the whole application
///
/// this is required to perform relative `querySelector` calls
/// as the root node might be out of scope for `document.querySelector` in case
/// it is placed in a shadow DOM or frame
late Element _appNode;

Element get appNode => _appNode;

/// Flutter-like widgets for building UIs with HTML elements. Define the [build]
/// method to create a new widget.
/// ```dart
/// class NotFoundPage extends Widget {
///   @override
///   Element build() => paragraphElement(text: '404: Not found');
/// }
/// ```
abstract class Widget {
  Widget? get parent => _context?.parent;
  BuildContext? _context;
  BuildContext get context => _context!;

  /// Method which needs to be defined by the developer to describe the UI
  /// using HTML Elements. It is **not** recommended to use this method to
  /// append your widget in the [build] method of another widget! Use
  /// [widgetElement] for this!
  Element build(BuildContext context);

  /// Override this method to initialize the state of this widget. The [parent]
  /// value is already set when this method is called.
  void initState() {
    return;
  }

  /// Use this method inside of the [build] method of the parent widget to
  /// append this widget to it. This creates a widget tree and makes it possible
  /// to use the [context.dependOnInheritedWidgetOfExactType] and [State.set]
  /// method.
  @Deprecated("Use widgetElement instead")
  Element appendTo(BuildContext context, [Object? cacheKey]) {
    return widgetElement(context, this);
  }

  /// Looks up the widget tree until it finds a parent of this type or otherwise
  /// throws an exception. Make sure that this widget has been appended by the
  /// [widgetElement] method first.
  @Deprecated("Use context.dependOnInheritedWidgetOfExactType instead")
  T findParent<T>() {
    return context.dependOnInheritedWidgetOfExactType<T>();
  }

  /// Perform some action after setState has been called.
  void addPostFrameCallback(Function callback) {
    _context?.addPostFrameCallback(callback);
  }

  /// Checks if this widget instance is still mounted to the DOM.
  bool get mounted =>
      _appNode.querySelector('[$_dataWidgetTypeId="${hashCode.toString()}"]') !=
      null;

  @override
  String toString() => _context == null ? '' : build(_context!).toString();
}

/// Use this method inside of the [build] method of the parent widget to
/// append this widget to it. This creates a widget tree and makes it possible
/// to use the [context.dependOnInheritedWidgetOfExactType] and [State.set]
  /// method.
Element widgetElement(BuildContext context, Widget child) {
  child._context = context;
  child.initState();
  return child.wrapWithElement();
}

const String _dataWidgetTypeKey = 'data-widget-type';
const String _dataWidgetTypeId = 'data-widget-id';

extension _WrapWithElement on Widget {
  Element wrapWithElement() {
    final childContext = BuildContext(this, callbacks: _context?._callbacks);

    var element = build(childContext);
    if (element.hasAttribute(_dataWidgetTypeKey) ||
        element.hasAttribute(_dataWidgetTypeId)) {
      element = spanElement(children: [element]);
    }
    return element
      ..setAttribute(_dataWidgetTypeKey, runtimeType.toString())
      ..setAttribute(_dataWidgetTypeId, hashCode.toString());
  }
}

/// Creates a new app and appends it to the [target] HTML element.
/// The [args] contain all attributes of the HTML element.
void runApp(
  Widget Function(Map<String, String> args) widgetBuilder, {
  @Deprecated('Use [target] instead') String? targetId,
  Element? target,
}) {
  targetId ??= 'app';
  target ??= document.getElementById(targetId);
  if (target == null) {
    throw Exception('There is no element with the ID $targetId in the DOM!');
  }
  _appNode = target;

  // Set the context of the root widget
  final rootWidget = widgetBuilder(_appNode.dataset);
  rootWidget._context = BuildContext(null);

  // Build and mount it
  rootWidget.initState();
  _appNode.children = [rootWidget.wrapWithElement()];

  // We added elements to the grid, we can now execute callbacks.
  rootWidget._context?.executeCallbacks();
}

class BuildContext {
  Widget? parent;

  BuildContext(this.parent, {List<Function>? callbacks}) {
    _callbacks = callbacks ?? [];
  }

  late List<Function> _callbacks;

  /// Add a callback which will be executed after initial build or after set state.
  void addPostFrameCallback(Function callback) {
    _callbacks.add(callback);

    if (parent == null) {
      print(
          "WARNING: Added callback when parent is null. now: ${_callbacks.length} callback");
    }
  }

  /// Execute all the callbacks and clear the callback list.
  void executeCallbacks() {
    while (_callbacks.isNotEmpty) {
      _callbacks.removeLast()();
    }
  }

  /// Looks up the widget tree until it finds a parent of this type or otherwise
  /// throws an exception. Make sure that this widget has been appended by the
  /// [appendTo()] method first.
  T dependOnInheritedWidgetOfExactType<T>() {
    if (parent == null) {
      throw Exception(
          'Unable to find parent of type $T in widget tree. Have you appended this widget with `.build()` instead of `.appendTo(this)` maybe?');
    }
    if (parent is T) {
      return parent as T;
    }
    return parent!.context.dependOnInheritedWidgetOfExactType<T>();
  }
}
