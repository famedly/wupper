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

/// Flutter-like widgets for building UIs with HTML elements. Define the [build]
/// method to create a new widget.
/// ```dart
/// class NotFoundPage extends Widget {
///   @override
///   Element build() => paragraphElement(text: '404: Not found');
/// }
/// ```
abstract class Widget {
  Widget({this.widgetId});

  Widget? get parent => _parent;
  Widget? _parent;

  final String? widgetId;

  String get _id => widgetId ?? hashCode.toString();

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
        'Unable to find parent of type $T in widget tree. Have you appended this widget with `.build()` instead of `.appendTo(this)` maybe?',
      );
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
    final widgetNode = _appNode.querySelector('[$_dataWidgetTypeId="$_id"]');
    if (widgetNode == null) {
      throw Exception(
        'No widget node with the Widget ID "$_id" found in the DOM! Have you appended this widget with `.build()` instead of `.appendTo(this)` maybe?',
      );
    }
    widgetNode.updateWith(wrapWithElement());
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
      _appNode.querySelector('[$_dataWidgetTypeId="$_id"]') != null;

  @override
  String toString() => build().toString();
}

const String _dataWidgetTypeKey = 'data-widget-type';
const String _dataWidgetTypeId = 'data-widget-id';

extension on Element {
  Node updateWith(Element other) {
    if (other.tagName != tagName) {
      return replaceWith(other);
    }
    if (attributes.toString() != other.attributes.toString()) {
      attributes = other.attributes;
    }
    if (innerText != other.innerText) innerText = other.innerText;
    if (scrollTop != other.scrollTop) scrollTop = other.scrollTop;
    if (scrollLeft != other.scrollLeft) scrollLeft = other.scrollLeft;
    if (children.isNotEmpty || other.children.isNotEmpty) {
      if (children.length == other.children.length) {
        for (var i = 0; i < children.length; i++) {
          children[i].updateWith(other.children[i]);
        }
      } else if (children.length < other.children.length) {
        for (var i = 0; i < children.length; i++) {
          children[i].updateWith(other.children[i]);
        }
        children.addAll(
          other.children.sublist(children.length, other.children.length),
        );
      } else {
        children = other.children;
      }
    }
    return this;
  }
}

extension _WrapWithElement on Widget {
  Element wrapWithElement() {
    var element = build();
    if (element.hasAttribute(_dataWidgetTypeKey) ||
        element.hasAttribute(_dataWidgetTypeId)) {
      element = spanElement(children: [element]);
    }
    return element
      ..setAttribute(_dataWidgetTypeKey, runtimeType.toString())
      ..setAttribute(_dataWidgetTypeId, _id);
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
  _appNode.children = [widgetBuilder(_appNode.dataset).wrapWithElement()];
}
