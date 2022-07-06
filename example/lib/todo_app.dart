import 'package:try_wupper/todo_page.dart';
import 'package:wupper/wupper.dart';

import 'list_view_test.dart';
import 'stateful_widget_test.dart';

class TodoApp extends StatelessWidget {
  @override
  Widget build(context) {
    return DivElementWidget(children: [
      LIElementWidget(
          children: [AnchorElementWidget(href: '/#/', text: "To not found")]),
      ParagraphElementWidget(text: "Page:"),
      BasicRouter(routeBuilder: (route) {
        print("Build route $route");
        switch (route) {
          case '/todo':
            return const TodoListPage();
          case '/state':
            return StatefulWidgetTest();
          case '/list':
            return ListViewTest();
          default:
            return NotFoundPage();
        }
      })
    ]);
  }
}

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(context) {
    print("Build Not found page");
    return DivElementWidget(children: [
      ParagraphElementWidget(text: '404: Not found'),
      LIElementWidget(children: [
        AnchorElementWidget(href: '/#/todo', text: "To home page")
      ]),
      LIElementWidget(children: [
        AnchorElementWidget(href: '/#/state', text: "To state page")
      ]),
      LIElementWidget(children: [
        AnchorElementWidget(href: '/#/list', text: "To list view page")
      ]),
      CustomWidget()
    ]);
  }
}

class CustomWidget extends StatefulWidgetTest {
  @override
  StateWidget<StatefulWidget> createState() => _CustomWidgetTest();
}

class _CustomWidgetTest extends StateWidget<CustomWidget> {
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
