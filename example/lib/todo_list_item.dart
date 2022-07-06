import 'package:try_wupper/todo_page.dart';
import 'package:wupper/wupper.dart';

class TodoListItem extends StatefulWidget {
  const TodoListItem({required this.todo}) : super();

  final String todo;

  @override
  StateWidget<TodoListItem> createState() => _TodoListItemState();
}

class _TodoListItemState extends StateWidget<TodoListItem> {
  int count = 0;

  @override
  void initState() {
    print("Init state todo list item");
    context.addPostFrameCallback(() {
      count++;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(context) => LIElementWidget(
        children: [
          ParagraphElementWidget(text: widget.todo),
          SpanElementWidget(innerText: "Post frame: $count"),
          ButtonElementWidget(
            text: 'X',
            onClick: (_) => TodoListPage.of(context).removeTodo(widget.todo),
          ),
        ],
      );
}
