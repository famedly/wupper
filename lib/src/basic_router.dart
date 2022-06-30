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

import '../wupper.dart';

/// Very minimalistic hash based router. Just define your routes like this:
/// ```dart
/// routeBuilder: (route) {
///     switch (route) {
///       case '/':
///          return TodoListPage();
///       default:
///         return NotFoundPage();
///    }
/// },
/// ```
class BasicRouter extends Widget {
  final Widget Function(String) routeBuilder;
  late final State<String> currentRoute;

  BasicRouter({
    required this.routeBuilder,
    String? initialRoute,
  }) : currentRoute = State<String>(
            initialRoute ?? window.location.hash.replaceFirst('#', '')) {
    window.onHashChange.listen(_onHashChangeListener);
  }

  void _onHashChangeListener(_) {
    final route = window.location.hash.replaceFirst('#', '');
    if (route != currentRoute.state) push(route);
  }

  void push(String route) => currentRoute.set(route);

  @override
  Element build(context) {
    window.location.hash = currentRoute.state;
    return currentRoute.bind(
      context,
      (context, currentRoute) => widgetElement(context, routeBuilder(currentRoute)),
    );
  }
}
