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
  final Key? key;
  const Widget({required this.key});

  /// Set this widget context, build it’s child, and render the widget, updating
  /// [Context.element]
  /// When overriding pay attention that inflate need to call
  /// [build] and [render]
  void inflate(BuildContext context);

  static const String _dataWidgetTypeKey = 'data-widget-type';
  static const String _dataWidgetTypeId = 'data-widget-id';

  /// Render the DOM element and add it to the context.
  Element render(BuildContext context) {
    final childElement = context.child?.element;

    if (context.child == null || childElement == null) {
      window.console.warn("Snap... we hit a render issue");
      window.console.warn("Widget parent: ${context.parent?.widget}");
      window.console.warn("Widget: ${context.widget}");
      window.console.warn("Widget child: ${context.child?.widget}");
      window.console.warn("Element parent: ${context.parent?.element}");
      window.console.warn("Element: ${context.element}");
      window.console.warn("Element child: ${context.child?.element}");
    }

    if (context.child == null) {
      throw Exception("This element has no child");
    } else if (childElement == null) {
      throw Exception("This elment was not rendered");
    }

    var newElement = childElement;

    if (newElement.hasAttribute(_dataWidgetTypeKey) ||
        newElement.hasAttribute(_dataWidgetTypeId)) {
      if (newElement.getAttribute(_dataWidgetTypeId) != hashCode.toString()) {
        newElement = SpanElement()..children = [newElement];
      }
    }

    newElement
      ..setAttribute(_dataWidgetTypeKey, runtimeType.toString())
      ..setAttribute(_dataWidgetTypeId, hashCode.toString());

    if (context.element != null && context.element?.parentNode != null) {
      context.element!.replaceWith(newElement);
    }

    context.element = newElement;

    return context.element!;
  }
}

class Key {
  final String value;
  Key(this.value);

  @override
  bool operator ==(other) {
    if (other.runtimeType != runtimeType) return false;
    return (other as Key).value == value;
  }

  @override
  int get hashCode => value.hashCode;
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
  final context = BuildContext();

  rootWidget.inflate(context);

  // Build and mount it
  _appNode.children = [context.element!];

  // We added elements to the grid, we can now execute callbacks.
  context.executeCallbacks();
}
