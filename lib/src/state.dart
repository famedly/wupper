import '../wupper.dart';

class State<T> {
  State(T initState) : _state = initState;
  T get state => _state;
  bool get hasListener =>
      _subscriptions.isNotEmpty ||
      _textSubscriptions.isNotEmpty ||
      _attributeSubscriptions.isNotEmpty;

  T _state;
  void set(T value) {
    final callbacks = <Function>[];
    _state = value;

    final _subs = {..._subscriptions};
    for (final sub in _subs) {
      final element = sub.widget.childElement;
      print("Element: ${element != null}");
      if (element == null) continue;

      if (element.isConnected != true) {
        _subscriptions.remove(sub);
        continue;
      }

      final context = BuildContext(sub.parent, callbacks: callbacks);

      final newElement = sub.builder(context, value);

      if (newElement is StatelessWidget) newElement.inflate(context);
      element.replaceWith(newElement.render());
      sub.widget = newElement;
    }
    final _textSubs = {..._textSubscriptions};
    for (final sub in _textSubs) {
      final element = sub.widget.childElement;
      if (element == null) continue;

      if (element.isConnected != true) {
        _textSubscriptions.remove(sub);
        continue;
      }
      element.text = sub.builder(value);
    }
    final _attriSubs = {..._attributeSubscriptions};
    for (final sub in _attriSubs) {
      final element = sub.widget.childElement;
      if (element == null) continue;

      if (element.isConnected != true) {
        _attributeSubscriptions.remove(sub);
        continue;
      }
      element.setAttribute(sub.attribute, sub.builder(value));
    }

    // execute callbacks
    while (callbacks.isNotEmpty) {
      callbacks.removeLast()();
    }
  }

  final Set<_Subscription<T>> _subscriptions = {};
  final Set<_TextSubscription<T>> _textSubscriptions = {};
  final Set<_AttributeSubscription<T>> _attributeSubscriptions = {};

  Widget bind(BuildContext context,
      Widget Function(BuildContext context, T value) builder) {
    final widget = builder(context, _state);

    print("Bind widget: $widget");
    _subscriptions.add(_Subscription<T>(widget, context.parent, builder));
    return widget;
  }

  Widget bindText(
    Widget element, [
    String Function(T value)? builder,
  ]) {
    builder ??= (value) => value.toString();
    _textSubscriptions.add(_TextSubscription<T>(element, builder));
    element.childElement?.text = builder(state);
    return element;
  }

  Widget bindAttribute(
    Widget element,
    String attribute, [
    String Function(T value)? builder,
  ]) {
    builder ??= (value) => value.toString();
    _attributeSubscriptions.add(
      _AttributeSubscription<T>(
        element,
        attribute,
        builder,
      ),
    );
    element.childElement?.setAttribute(attribute, builder(state));
    return element;
  }
}

class _TextSubscription<T> {
  final Widget widget;
  final String Function(T value) builder;

  const _TextSubscription(this.widget, this.builder);
}

class _AttributeSubscription<T> {
  final Widget widget;
  final String attribute;
  final String Function(T value) builder;

  const _AttributeSubscription(this.widget, this.attribute, this.builder);
}

class _Subscription<T> {
  Widget widget;
  final Widget? parent;
  final Widget Function(BuildContext context, T value) builder;

  _Subscription(this.widget, this.parent, this.builder);
}
