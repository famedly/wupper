import 'package:try_wupper/todo_list_item.dart';
import 'package:wupper/wupper.dart';

class TodoListPage extends StatelessWidget {
  final textField = InputElementWidget(
    type: 'text',
    placeholder: 'New todo',
  );
  State<List<String>> todos = State([]);
  State<String> text = State("");

  static TodoListPage of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TodoListPage>();
  }

  void addTodoAction([_]) {
    final value = textField.inputElement?.value;

    print("Text field value: $value");
    if (value == null || value.isEmpty) return;
    todos.set(todos.state..add(value));
    textField.inputElement?.value = '';
    text.set(value);
  }

  void removeTodo(String todo) {
    print("Remove todo $todo");
    todos.set(todos.state..removeWhere((t) => t == todo));
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
        todos.bind(context, (context, value) {
          print("BindContext valid: ${context.parent != null}");
          return UListElementWidget(
            children: [
              for (final todo in value) TodoListItem(todo: todo),
            ],
          );
        }),
        text.bindAttribute(
          DivElementWidget(
              id: 'blocking_background',
              innerText: 'Bind attribute, initial text'),
          'innerText',
          (text) => 'Bind attribute: $text',
        ),
        DivElementWidget(innerText: "Bind text: "),
        text.bindText(DivElementWidget()),
      ],
    );
  }
}
