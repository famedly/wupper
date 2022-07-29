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
class TodoListItem extends StatelessWidget {
  final String todo;

  const TodoListItem({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) => LIElement(
        children: [
          ParagraphElementWidget(text: todo),
          ButtonElementWidget(
            text: 'X',
            onClick: (_) => TodoListPage.of(context).removeTodo(todo),
          ),
        ],
      );
}
```

As in flutter, we can use `StatefulWidget` to store state inside widgets

```dart
class CounterPage extends StatefulWidget {
  const CounterPage({Key? key, required this.title}): super(key: key);

  final String title;

@override
StateWidget<CounterPage> createState() => CounterPageState();
}

class CounterPageState extends StateWidget<CounterPage>{
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return DivElementWidget(
      children: [
        HeadingElementH1Widget(text: title),
        ParagraphElementWidget(text: 'Counter: $count')),
        ButtonElementWidget(
          text: 'Counter +',
          onClick: (_) => setState((){ count++; }) ,
        ),
      ],
    );
  }
}
```


```dart
class TodoListPage extends StatelessWidget {
  final textFieldController = InputElementController();
  State<List<String>> todos = State([]);

  void addTodoAction([_]) {
    final value = textFieldController.value;
    if (value == null || value.isEmpty) return;
    todos.set(todos.state.add(value));
    textFieldController.value = '';f
  }

  void removeTodo(String todo) {
    todos.set(todos.state..removeWhere((t) => t == todo));
  }

  @override
  Widget build(BuildContext context) => DivElementWidget(
        className: 'container',
        children: [
           InputElementWidet(
            controller: textFieldController,
            type: 'text',
            placeholder: 'New todo',
          ),
          ButtonElementWidget(
            text: 'Add',
            onClick: addTodoAction,
          ),
          UListElementWidget(
            children: [
              for (final todo in todos) TodoListItem(todo: todo),
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
We also have a very basic hash router:

```dart
class TodoApp extends Widget {
  @override
  Element build(BuildContext context) {
    return BasicRouter(routeBuilder: (route) {
      switch (route) {
        case '/':
          return TodoListPage();
        default:
          return NotFoundPage();
      }
    }).appendTo(context);
  }
}

class NotFoundPage extends Widget {
  @override
  Element build(BuildContext context) => paragraphElement(text: '404: Not found');
}
```

### FutureBuilder and StreamBuilder

You have FutureBuilders and StreamBuilders which are working similar to Flutter.

#### FutureBuilder

Similar to Flutters FutureBuilder but without AsyncSnapshot. Build something
depending of the result of a future. Optional you can set an errorBuilder to handle errors happening while waiting on the future.

##### Example:

```dart
FutureBuilder<String>(
  future: loadDataFromServer(),
  builder: (BuilContext context, AsyncSnapshot<String> snapshot) =>
    DivElementWidget(text: snapshot.data ?? snapshot.error?.toString() ?? 'No data yet'),
);
```

#### StreamBuilder

Similar to Flutters StreamBuilder but without AsyncSnapshot. Constantly
rebuild something depending of the last value of a stream. Optional you can
set an errorBuilder to handle errors.

##### Example:

```dart
StreamBuilder<String>(
  stream: someDataStream,
  builder: (BuildContext context, AsyncSnapshot<String> snapshot) =>
    DivElementWidget(text: snapshot.data ?? snapshot.error?.toString() ?? 'No data yet'),
);
```

### BuildContext

The BuildContext is used in the `build` and `appendTo` functions. It is used to provide some context when building the widget.

It stores

* the parent of the widget so appendTo can add the element to the widget.
* add information for the build callback so we can execute callbacks after inital build or set states.

Especially, build callbacks are handy if you want to execute a function after the element has been added to the DOM.

```
  context.addPostFrameCallback((){/* my function */});
```

Notes:



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



## Widgets types

* StatelessWidget
* StatefulWidget
* WrapperWidget : A wrapper allowing to add custom Element objects into the widget tree.