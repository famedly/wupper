import 'package:try_wupper/todo_list_item.dart';
import 'package:wupper/wupper.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage() : super();

  static TodoListPageState of(BuildContext context) {
    return context.findState<TodoListPageState>();
  }

  @override
  StateWidget<StatefulWidget> createState() => TodoListPageState();
}

class TodoListPageState extends StateWidget<TodoListPage> {
  final textFieldController = InputElementController();
  List<String> todos = [];
  String text = "";

  void addTodoAction([_]) {
    final value = textFieldController.value;
    if (value == null || value.isEmpty) return;
    textFieldController.value = '';

    setState(() {
      todos.add(value);
      text = value;
    });
  }

  void removeTodo(String todo) {
    todos.removeWhere((t) => t == todo);
    setState(() {});
  }

  @override
  Widget build(context) {
    return DivElementWidget(
      className: 'container',
      children: [
        InputElementWidget(
            type: 'text',
            placeholder: 'New todo',
            controller: textFieldController),
        ButtonElementWidget(
          text: 'Add',
          onClick: addTodoAction,
        ),
        UListElementWidget(
          children: [
            for (final todo in todos) TodoListItem(todo: todo),
          ],
        ),
        DivElementWidget(innerText: "Bind text: $text")
      ],
    );
  }
}
