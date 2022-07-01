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

import 'package:wupper/wupper.dart';

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

  Element render();

  Element? childElement;

  /// Override this method to initialize the state of this widget. The [parent]
  /// value is already set when this method is called.
  void initState() {
    return;
  }

  /// Looks up the widget tree until it finds a parent of this type or otherwise
  /// throws an exception. Make sure that this widget has been appended by the
  /// [widgetElement] method first.
  @Deprecated("Use context.dependOnInheritedWidgetOfExactType instead")
  T findParent<T>() {
    return context.dependOnInheritedWidgetOfExactType<T>();
  }
}

/// Creates a new app and appends it to the [target] HTML element.
/// The [args] contain all attributes of the HTML element.
void runApp(
  StatelessWidget Function(Map<String, String> args) widgetBuilder, {
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
  final cntx = BuildContext(null);
  print("Init context");
  rootWidget._context = cntx;

  rootWidget.inflate(cntx);

  // Build and mount it
  _appNode.children = [rootWidget.render()];

  // We added elements to the grid, we can now execute callbacks.
  rootWidget._context?._executeCallbacks();
}

class BuildContext {
  Widget? parent;

  BuildContext(this.parent, {List<Function>? callbacks}) {
    this.callbacks = callbacks ?? [];
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
  void _executeCallbacks() {
    while (callbacks.isNotEmpty) {
      callbacks.removeLast()();
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

class EndpointWidget extends Widget {
  @override
  Element render() {
    print("Arggg trying to render an endpoint");
    throw UnimplementedError();
  }
}
