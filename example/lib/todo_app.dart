import 'dart:html';

import 'package:try_wupper/future_test.dart';
import 'package:try_wupper/perf_test_page.dart';
import 'package:try_wupper/state_test.dart';
import 'package:try_wupper/test_inputs.dart';
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
        switch (route) {
          case '/todo':
            return const TodoListPage();
          case '/state':
            return const StatefulWidgetTest();
          case '/list':
            return ListViewTest();
          case '/perf':
            return const PerfTestPage();
          case '/future':
            return const FutureTest();
          case '/input':
            return const TestInput();
          case '/legacy_state':
            return LegacyStateTest();
          default:
            return const NotFoundPage();
        }
      })
    ]);
  }
}

class NotFoundPage extends StatelessWidget {
  const NotFoundPage() : super();

  @override
  Widget build(context) {
    return DivElementWidget(
        children: [
          ParagraphElementWidget(text: '404: Not found'),
          LIElementWidget(children: [
            AnchorElementWidget(href: '/#/todo', text: "To home page")
          ]),
          LIElementWidget(children: [
            AnchorElementWidget(href: '/#/state', text: "To state page")
          ]),
          LIElementWidget(children: [
            AnchorElementWidget(
                href: '/#/legacy_state', text: "To legacy state page")
          ]),
          LIElementWidget(children: [
            AnchorElementWidget(href: '/#/list', text: "To list view page")
          ]),
          LIElementWidget(children: [
            AnchorElementWidget(href: '/#/perf', text: "To perf page")
          ]),
          LIElementWidget(children: [
            AnchorElementWidget(href: '/#/input', text: "To input page")
          ]),
          LIElementWidget(children: [
            AnchorElementWidget(href: '/#/future', text: "To future test page")
          ]),
          DivElementWidget(text: "api", children: [
            ParagraphElementWidget(text: "test"),
            ParagraphElementWidget(text: "nice")
          ]),
          WrapperWidget(DivElement()
            ..children = [ParagraphElement()..text = "test"]
            ..appendText("nice"))
        ],
      );
  }
}
