import 'dart:html';

import 'package:wupper/wupper.dart';

class TodoApp extends Widget {
  @override
  Element build() {
    return BasicRouter(
      routeBuilder: (route) {
        switch (route) {
          case '':
            return TodoListPage();
          default:
            return NotFoundPage();
        }
      },
    ).appendTo(this);
  }
}

class NotFoundPage extends Widget {
  @override
  Element build() => paragraphElement(text: '404: Not found');
}

class TodoListPage extends Widget {
  final InputElement textField = inputElement(
    type: 'text',
    placeholder: 'New todo',
  );
  final List<String> todos = [];

  void addTodoAction([_]) {
    final value = textField.value;
    if (value == null || value.isEmpty) return;
    setState(() {
      todos.add(value);
      textField.value = '';
    });
  }

  void removeTodo(String todo) {
    setState(() {
      todos.removeWhere((t) => t == todo);
    });
  }

  @override
  Element build() => divElement(
        className: 'container',
        children: [
          textField,
          buttonElement(
            text: 'Add',
            onClick: addTodoAction,
          ),
          uListElement(
            children: [
              for (final todo in todos) TodoListItem(todo: todo).appendTo(this),
            ],
          ),
        ],
      );
}

class TodoListItem extends Widget {
  final String todo;

  TodoListItem({required this.todo});

  @override
  Element build() => lIElement(
        children: [
          paragraphElement(text: todo),
          buttonElement(
            text: 'X',
            onClick: (_) => findParent<TodoListPage>().removeTodo(todo),
          ),
        ],
      );
}
