# Wupper

Dart Web UI Framework based on HTML Elements inspired by Flutter

## Usage

### Motivation

There are not enough JavaScript frameworks out there! Let's create
one with Dart, which feels like programming with Flutter!

Our requirements when starting with this were:

- Create a web app with dart so we can use our existing libraries
- We have experience with Flutter so create something that works and feels similar
- Use a UI framework with Dart on Web which works:
  - Dart-Angular seems to have no future
  - Vue-Dart has probably been canceled
  - Dart-React has no Null Safety and even no Type Safety

This made us creating a very minimal own single-page-application framework with Dart on web:

### Widgets

Similar to Flutter we say: Everything is a widget. But instead of using Flutter widgets we use HTML Elements to create widgets with them.

A basic widget looks like this:

```dart
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
```

The widget class must extend `Widget` and at least implement a build method. This method must return a HTML Element. We can compose
a widget from other widgets as well using `WidgetClass().appendTo(this)`.

```dart
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
```

With `.appendTo(this)` this widget becomes part of the other widget and receives a link back to it's parent. So we make sure
that every widget always knows their parent widget and we get a "widget tree". We can use this to find a specific parent
somewhere up in it by using `findParent<Type>()`. This works very similar to **Provider** in Flutter:

```dart
findParent<TodoListPage>().removeTodo(todo)
```

If we want to change the UI at runtime, we can use `setState((){})`. This triggers the build method and appends the outcoming
HTML Element to the DOM where the widget currently is. **This rebuilds the whole widget and every widget below it!** For a good
performance we should rebuild as least Elements as possible. We can store some Elements from rebuilding by making them members
of the class. So we can make sure that states (like the value of a textfield) does not get lost on rebuilding. We also have a
very basic hash router:

```dart
class TodoApp extends Widget {
  @override
  Element build() {
    return BasicRouter(routeBuilder: (route) {
      switch (route) {
        case '/':
          return TodoListPage();
        default:
          return NotFoundPage();
      }
    }).appendTo(this);
  }
}

class NotFoundPage extends Widget {
  @override
  Element build() => paragraphElement(text: '404: Not found');
}
```

### runApp and widget tree

Once we have our first widgets we need to append them to the DOM. We can do this by using `runApp()`:

```dart
void main() => runApp((Map<String, String> args) => TodoApp());
```

By default, this appends the whole web app to the element with the ID `app`. We can change this by:

```dart
void main() => runApp((Map<String, String> args) => TodoApp(), target = document.querySelector(#'other-id'));
```

It is important to understand how the widget tree is related to the DOM! All widgets are represented
as an element in the DOM, so we can see the widget tree in it.

For example our `TodoListItem` widget would look like this:

```html
<li data-widget-type="TodoListItem" data-widget-id="774243307">
  <p>Buy milk</p>
  <button onClick="minified:">X</button>
</li>
```

The `data-widget-type` becomes "minified" in production.
