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
    if (false)
      return DivElementWidget(innerText: "Hello", children: [
        DivElementWidget(innerText: "TODO"),
        postBackExecuted.bind(
            context,
            (context, value) =>
                SpanElementWidget(innerText: "Post frame: $value")),
        DivElementWidget(innerText: "TODO")
      ]);

    return DivElementWidget(children: [
      postBackExecuted.bind(context, (context, value) {
        print("Buildcontext triggered for build");
        return SpanElementWidget(innerText: "Post frame: $value");
      }),
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
        AnchorElementWidget(href: '/#/', text: "To home page"),
        CustomWidget()
      ]);
}

class CustomWidget extends StatelessWidget {
  String text = "oups";

  @override
  void initState() {
    text = "nice, init state works!";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ParagraphElementWidget(text: text);
  }
}
