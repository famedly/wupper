import 'dart:html';

import 'package:wupper/wupper.dart';

void main() {
  runApp((Map<String, String> args) => TodoApp());
}

class TodoApp extends Widget {
  @override
  Element build(context) {
    return BasicRouter(
      routeBuilder: (route) {
        switch (route) {
          case '/':
            return TodoListPage();
          default:
            return NotFoundPage();
        }
      },
    ).appendTo(context);
  }
}

class NotFoundPage extends Widget {
  @override
  Element build(context) => paragraphElement(text: '404: Not found');
}

class TodoListPage extends Widget {
  final InputElement textField = inputElement(
    type: 'text',
    placeholder: 'New todo',
  );
  final State<List<String>> todos = State([]);

  void addTodoAction([_]) {
    final value = textField.value;
    if (value == null || value.isEmpty) return;
    todos.set(todos.state..add(value));
    textField.value = '';
  }

  void removeTodo(String todo) {
    todos.set(todos.state..removeWhere((t) => t == todo));
  }

  @override
  Element build(context) => divElement(
        className: 'container',
        children: [
          textField,
          buttonElement(
            text: 'Add',
            onClick: addTodoAction,
          ),
          todos.bind(
            context,
            (context, todos) => uListElement(
              children: [
                for (final todo in todos)
                  TodoListItem(todo: todo).appendTo(context),
              ],
            ),
          ),
        ],
      );
}

class TodoListItem extends Widget {
  final String todo;

  TodoListItem({required this.todo});

  @override
  Element build(context) => lIElement(
        children: [
          paragraphElement(text: todo),
          buttonElement(
            text: 'X',
            onClick: (_) => findParent<TodoListPage>().removeTodo(todo),
          ),
        ],
      );
}
