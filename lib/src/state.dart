import 'dart:html';

class State<T> {
  State(T initState) : _state = initState;
  T get state => _state;
  T _state;
  void set(T value) {
    _state = value;
    for (final sub in _subscriptions) {
      final newElement = sub.builder(value);
      sub.element.replaceWith(newElement);
      sub.element = newElement;
    }
    if (value is String) {
      for (final sub in _textSubscriptions) {
        sub.element.text = sub.builder(value);
      }
      for (final sub in _attributeSubscriptions) {
        sub.element.attributes[sub.attribute] = sub.builder(value);
      }
    }
  }

  final Set<_Subscription<T>> _subscriptions = {};
  final Set<_TextSubscription> _textSubscriptions = {};
  final Set<_AttributeSubscription> _attributeSubscriptions = {};

  Element bind(Element Function(T value) builder) {
    final element = builder(_state);
    _subscriptions.add(_Subscription<T>(element, builder));
    return element;
  }
}

class _TextSubscription<T> {
  final Element element;
  final String Function(T value) builder;

  const _TextSubscription(this.element, this.builder);
}

class _AttributeSubscription<T> {
  final Element element;
  final String attribute;
  final String Function(T value) builder;

  const _AttributeSubscription(this.element, this.attribute, this.builder);
}

class _Subscription<T> {
  Element element;
  final Element Function(T value) builder;

  _Subscription(this.element, this.builder);
}

extension BindStateExtension on Element {
  void bindText<T>(
    State<T> state,
    String Function(T value) builder,
  ) {
    state._textSubscriptions.add(_TextSubscription<T>(this, builder));
    text = builder(state.state);
  }

  void bindAttribute<T>(
    State<T> state,
    String attribute,
    String Function(T value) builder,
  ) {
    state._attributeSubscriptions.add(
      _AttributeSubscription<T>(
        this,
        attribute,
        builder,
      ),
    );
  }
}
