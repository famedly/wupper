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
  final textField = InputElementWidget(
    type: 'text',
    placeholder: 'New todo',
  );
  List<String> todos = [];
  String text = "";

  void addTodoAction([_]) {
    final value = textField.inputElement?.value;

    print("Text field value: $value");
    if (value == null || value.isEmpty) return;
    textField.inputElement?.value = '';

    setState(() {
      todos.add(value);
      text = value;
    });
  }

  void removeTodo(String todo) {
    print("Remove todo $todo");
    todos.removeWhere((t) => t == todo);
    setState(() {});
  }

  @override
  Widget build(context) {
    print("Build todo page: Context valid: ${context.parent != null}");
    return DivElementWidget(
      className: 'container',
      children: [
        textField,
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
