import 'dart:html';

import 'package:try_wupper/todo_page.dart';
import 'package:wupper/wupper.dart';

class TodoApp extends StatelessWidget {
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
  Widget build(context) {
    return DivElementWidget(children: [
      postBackExecuted.bind(
          context,
          (context, value) =>
              SpanElementWidget(innerText: "Post frame: $value")),
      BasicRouter(routeBuilder: (route) {
        print("Build route $route");
        switch (route) {
          case '/':
            return TodoListPage();
          default:
            return NotFoundPage();
        }
      })
    ]);
  }
}

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(context) => DivElementWidget(children: [
        ParagraphElementWidget(text: '404: Not found'),
        AnchorElementWidget(href: '/#/', text: "To home page")
      ]);
}
