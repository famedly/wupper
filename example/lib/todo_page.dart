import 'dart:html';

import 'package:try_wupper/todo_list_item.dart';
import 'package:wupper/wupper.dart';

class TodoListPage extends Widget {
  final InputElement textField = inputElement(
    type: 'text',
    placeholder: 'New todo',
  );
  State<List<String>> todos = State([]);
  State<String> text = State("");

  static TodoListPage of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TodoListPage>();
  }

  void addTodoAction([_]) {
    final value = textField.value;
    if (value == null || value.isEmpty) return;
    todos.set(todos.state..add(value));
    textField.value = '';
    text.set(value);
  }

  void removeTodo(String todo) {
    print("Remove todo $todo");
    todos.set(todos.state..removeWhere((t) => t == todo));
  }

  @override
  Element build(context) {
    print("Build todo page: Context valid: ${context.parent != null}");
    return divElement(
      className: 'container',
      children: [
        textField,
        buttonElement(
          text: 'Add',
          onClick: addTodoAction,
        ),
        todos.bind(context, (context, value) {
          print("BindContext valid: ${context.parent != null}");
          return uListElement(
            children: [
              for (final todo in value)
                widgetElement(context, TodoListItem(todo: todo)),
            ],
          );
        }),
        text.bindAttribute(
          divElement(
              id: 'blocking_background',
              innerText: 'Bind attribute, initial text'),
          'innerText',
          (text) => 'Bind attribute: $text',
        ),
        divElement(innerText: "Bind text: "),
        text.bindText(divElement()),
      ],
    );
  }
}
