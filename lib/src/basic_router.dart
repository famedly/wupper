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
  String currentRoute;

  BasicRouter({
    required this.routeBuilder,
    String? initialRoute,
  }) : currentRoute =
            initialRoute ?? window.location.hash.replaceFirst('#', '') {
    window.onHashChange.listen(_onHashChangeListener);
  }

  void _onHashChangeListener(_) {
    final route = window.location.hash.replaceFirst('#', '');
    if (route != currentRoute) push(route);
  }

  void push(String route) => setState(() {
        currentRoute = route;
      });

  @override
  Element build() {
    window.location.hash = currentRoute;
    return routeBuilder(currentRoute).appendTo(this);
  }
}
