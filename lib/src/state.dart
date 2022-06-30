import 'dart:html';

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
      if (sub.element.isConnected != true) {
        _subscriptions.remove(sub);
        continue;
      }

      final newElement =
          sub.builder(BuildContext(sub.parent, callbacks: callbacks), value);
      sub.element.replaceWith(newElement);
      sub.element = newElement;
    }
    final _textSubs = {..._textSubscriptions};
    for (final sub in _textSubs) {
      if (sub.element.isConnected != true) {
        _textSubscriptions.remove(sub);
        continue;
      }
      sub.element.text = sub.builder(value);
    }
    final _attriSubs = {..._attributeSubscriptions};
    for (final sub in _attriSubs) {
      if (sub.element.isConnected != true) {
        _attributeSubscriptions.remove(sub);
        continue;
      }
      sub.element.setAttribute(sub.attribute, sub.builder(value));
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
    final element = builder(context, _state);
    _subscriptions.add(_Subscription<T>(element, context.parent, builder));
    return element;
  }

  Widget bindText(
    Widget element, [
    String Function(T value)? builder,
  ]) {
    builder ??= (value) => value.toString();
    _textSubscriptions.add(_TextSubscription<T>(element, builder));
    element.text = builder(state);
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
    element.setAttribute(attribute, builder(state));
    return element;
  }
}

class _TextSubscription<T> {
  final Widget element;
  final String Function(T value) builder;

  const _TextSubscription(this.element, this.builder);
}

class _AttributeSubscription<T> {
  final Widget element;
  final String attribute;
  final String Function(T value) builder;

  const _AttributeSubscription(this.element, this.attribute, this.builder);
}

class _Subscription<T> {
  Widget element;
  final Widget? parent;
  final Widget Function(BuildContext context, T value) builder;

  _Subscription(this.element, this.parent, this.builder);
}
