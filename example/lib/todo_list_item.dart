import 'dart:html';

import 'package:try_wupper/todo_page.dart';
import 'package:wupper/wupper.dart';

class TodoListItem extends Widget {
  final String todo;
  final postBackExecuted = State<int>(0);

  TodoListItem({required this.todo});
  
  @override
  void initState() {
    addPostFrameCallback(() {
      postBackExecuted.set(postBackExecuted.state + 1);
    });
    super.initState();
  }

  @override
  Element build(context) => lIElement(
        children: [
          paragraphElement(text: todo),
          postBackExecuted.bind(context,
              (context, value) => spanElement(innerText: "Post frame: $value")),
          buttonElement(
            text: 'X',
            onClick: (_) => findParent<TodoListPage>().removeTodo(todo),
          ),
        ],
      );
}
