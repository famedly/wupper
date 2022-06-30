import 'dart:html';

import 'package:try_wupper/todo_page.dart';
import 'package:wupper/wupper.dart';

class TodoListItem extends StatelessWidget {
  final String todo;
  final postBackExecuted = State<int>(0);

  TodoListItem({required this.todo});

  @override
  void initState() {
    context.addPostFrameCallback(() {
      postBackExecuted.set(postBackExecuted.state + 1);
    });
    super.initState();
  }

  @override
  Widget build(context) => LIElementWidget(
        children: [
          ParagraphElementWidget(text: todo),
          postBackExecuted.bind(context,
              (context, value) => SpanElementWidget(innerText: "Post frame: $value")),
          ButtonElementWidget(
            text: 'X',
            onClick: (_) => TodoListPage.of(context).removeTodo(todo),
          ),
        ],
      );
}
