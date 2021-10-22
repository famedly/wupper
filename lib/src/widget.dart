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

/// Flutter-like widgets for building UIs with HTML elements. Define the [build]
/// method to create a new widget.
/// ```dart
/// class NotFoundPage extends Widget {
///   @override
///   Element build() => paragraphElement(text: '404: Not found');
/// }
/// ```
abstract class Widget {
  Widget? get parent => _parent;
  Widget? _parent;

  /// Method which needs to be defined by the developer to describe the UI
  /// using HTML Elements. It is **not** recommended to use this method to
  /// append your widget in the [build] method of another widget! Use [appendTo]
  /// for this!
  Element build();

  /// Override this method to initialize the state of this widget. The [parent]
  /// value is already set when this method is called.
  void initState() {
    return;
  }

  /// Use this method inside of the [build] method of the parent widget to
  /// append this widget to it. This creates a widget tree and makes it possible
  /// to use the [findParent()] and [setState()] method.
  Element appendTo(Widget parent) {
    _parent = parent;
    initState();
    return wrapWithElement();
  }

  /// Looks up the widget tree until it finds a parent of this type or otherwise
  /// throws an exception. Make sure that this widget has been appended by the
  /// [appendTo()] method first.
  T findParent<T>() {
    final parentPointer = parent;
    if (parentPointer == null) {
      throw Exception(
          'Unable to find parent of type $T in widget tree. Have you appended this widget with `.build()` instead of `.appendTo(this)` maybe?');
    }
    if (parentPointer is T) {
      return parentPointer as T;
    }
    return parentPointer.findParent<T>();
  }

  /// Similar to the Flutter equivalent this changes the state of this widget
  /// and rebuilds the UI and all underlying widgets. Make sure that this widget
  /// has been appended by the [appendTo()] method first.
  void setState(void Function() fun) {
    fun();
    final widgetNode =
        document.querySelector('[$_dataWidgetTypeId="${hashCode.toString()}"]');
    if (widgetNode == null) {
      throw Exception(
          'No widget node with hashCode $hashCode found in the DOM! Have you appended this widget with `.build()` instead of `.appendTo(this)` maybe?');
    }
    final parent = widgetNode.parent;
    if (parent == null) {
      throw Exception(
          'No parent node for widget with hashCode $hashCode found in the DOM!');
    }
    final index = parent.children.indexWhere((element) =>
        element.getAttribute(_dataWidgetTypeId) == hashCode.toString());
    parent.children[index] = wrapWithElement();
    while (_postSetStateCallbacks.isNotEmpty) {
      _postSetStateCallbacks.removeLast()();
    }
  }

  final List<Function> _postSetStateCallbacks = [];

  /// Perform some action after setState has been called.
  void addPostSetStateCallback(Function callback) {
    _postSetStateCallbacks.add(callback);
  }

  /// Checks if this widget instance is still mounted to the DOM.
  bool get mounted =>
      document.querySelector('[$_dataWidgetTypeId="${hashCode.toString()}"]') !=
      null;

  @override
  String toString() => build().toString();
}

const String _dataWidgetTypeKey = 'data-widget-type';
const String _dataWidgetTypeId = 'data-widget-id';

extension _WrapWithElement on Widget {
  Element wrapWithElement() {
    var element = build();
    if (element.hasAttribute(_dataWidgetTypeKey) ||
        element.hasAttribute(_dataWidgetTypeId)) {
      element = spanElement(children: [element]);
    }
    return element
      ..setAttribute(_dataWidgetTypeKey, runtimeType.toString())
      ..setAttribute(_dataWidgetTypeId, hashCode.toString());
  }
}

/// Creates a new app and appends it to the HTML element with the ID [targetId].
void runApp(Widget widget, {String targetId = 'app'}) {
  final appNode = document.getElementById(targetId);
  if (appNode == null) {
    throw Exception('There is no element with the ID $targetId in the DOM!');
  }
  appNode.children = [widget.wrapWithElement()];
}
