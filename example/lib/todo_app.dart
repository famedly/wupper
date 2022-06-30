import 'dart:html';

import 'package:try_wupper/todo_page.dart';
import 'package:wupper/wupper.dart';

class TodoApp extends Widget {
  final postBackExecuted = State<int>(0);
  @override
  void initState() {
    context.addPostFrameCallback(() {
      print("Router mounted");
      postBackExecuted.set(postBackExecuted.state + 1);
    });
    super.initState();
  }

  @override
  Element build(context) {
    return divElement(children: [
      postBackExecuted.bind(context,
          (context, value) => spanElement(innerText: "Post frame: $value")),
      widgetElement(context, BasicRouter(routeBuilder: (route) {
        print("Build route $route");
        switch (route) {
          case '/':
            return TodoListPage();
          default:
            return NotFoundPage();
        }
      }))
    ]);
  }
}

class NotFoundPage extends Widget {
  @override
  Element build(context) => divElement(children: [
        paragraphElement(text: '404: Not found'),
        anchorElement(href: '/#/', text: "To home page")
      ]);
}
