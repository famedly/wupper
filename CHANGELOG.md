## 4.0.0
BREAKING CHANGE! The setState method got deprecated and will be removed in a future release.
Use the new State object instead and bind HTML elements to a state by using:

```dart
// Add a state to a widget:
final state = State<int>(5);

// Bind the state to the whole HTML element:
state.bind((stateValue) => divElement());

// Bind the state only to the text node:
divElement..bindText(state);

// Bind the state only to a specific attribute:
divElement..bindAttribute(state, 'class');

// Change the state:
buttonElement(onClick: state.set(state.state++));
```

## 3.4.0
- fix: allow to change `_view` of ListViewController
- feat: expose list view children to controller

## 3.3.1
- fix: UpdateAll in ListView was not working correctly

## 3.3.0
- refactor: Finish ListView implementation

## 3.2.2
- fix: Initial AsyncSnapshot
- fix: Insert in ListView at correct position
- fix: Export AsyncSnapshot

## 3.2.1
- fix: Actually export the new widgets

## 3.2.0
- feat: Add future builder and stream builder
- feat: Add basic listview

## 3.1.1
- fix: Call initState for root widget

## 3.1.0
- feat: Use query selectors for more granular setState

## 3.0.0
- BREAKING CHANGE: use dataset as runApp args
- feat: provide html element instead of target ID

## 2.0.0
- feat: runApp with attributes

## 1.0.1 - 26-10-2021
- feat: Add initState method
- refactor: Use .replaceWith method for better performance

## 1.0.0

- Initial version.
