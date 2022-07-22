import 'package:wupper/wupper.dart';

class State<T> {
  State(T initState) : _state = initState;

  T get state => _state;
  bool get hasListener => controllers.isNotEmpty;

  final Set<StateSubscriptionController> controllers = {};

  T _state;
  void set(T value) {
    final callbacks = <Function>[];
    _state = value;

    for (final controller in controllers) {
      controller.set(value);
    }

    // execute callbacks
    while (callbacks.isNotEmpty) {
      callbacks.removeLast()();
    }
  }

  Widget bind(BuildContext context,
      Widget Function(BuildContext context, T value) builder) {
    final controller = StateSubscriptionController<T>(_state);
    controllers.add(controller);
    return StateSubscriptionWidget<T>(builder: builder, controller: controller);
  }

  Widget bindText(
    Widget element, [
    String Function(T value)? builder,
  ]) {
    builder ??= (value) => value.toString();
    final controller = StateSubscriptionController<T>(state);
    controllers.add(controller);
    return StateTextWidget<T>(
        child: element, controller: controller, builder: builder);
  }

  Widget bindAttribute(
    Widget element,
    String attribute, [
    String Function(T value)? builder,
  ]) {
    builder ??= (value) => value.toString();

    final controller = StateSubscriptionController<T>(state);
    controllers.add(controller);
    return StateAttributeWidget<T>(
        child: element,
        controller: controller,
        builder: builder,
        attribute: attribute);
  }
}

class StateSubscriptionController<T> {
  StateWidget? _state;
  T value;

  StateSubscriptionController(this.value);
  void attach(StateWidget state) => _state = state;

  void set(T value) {
    this.value = value;
    _state?.setState(() {});
  }
}

// Widget builder
class StateSubscriptionWidget<T> extends StatefulWidget {
  final Widget Function(BuildContext, T) builder;
  final StateSubscriptionController<T> controller;

  const StateSubscriptionWidget(
      {required this.builder, required this.controller})
      : super();
  @override
  StateWidget<StateSubscriptionWidget<T>> createState() =>
      StateSubscriptionWidgetState<T>();
}

class StateSubscriptionWidgetState<T>
    extends StateWidget<StateSubscriptionWidget<T>> {
  @override
  void initState() {
    widget.controller.attach(this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) =>
      widget.builder(context, widget.controller.value);
}

// Text
class StateTextWidget<T> extends StatefulWidget {
  final StateSubscriptionController<T> controller;

  final String Function(T value) builder;
  final Widget child;

  const StateTextWidget(
      {required this.child, required this.controller, required this.builder})
      : super();
  @override
  StateWidget<StateTextWidget<T>> createState() => StateTextWidgetState<T>();
}

class StateTextWidgetState<T> extends StateWidget<StateTextWidget<T>> {
  @override
  void initState() {
    widget.controller.attach(this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    addPostFrameCallback(() {
      context.element!.text = widget.builder(widget.controller.value);
    });
    return widget.child;
  }
}

// Attribute

class StateAttributeWidget<T> extends StatefulWidget {
  final StateSubscriptionController<T> controller;

  final String Function(T value) builder;
  final Widget child;
  final String attribute;

  const StateAttributeWidget(
      {required this.child,
      required this.controller,
      required this.builder,
      required this.attribute})
      : super();
  @override
  StateWidget<StateAttributeWidget<T>> createState() =>
      StateAttributeWidgetState<T>();
}

class StateAttributeWidgetState<T>
    extends StateWidget<StateAttributeWidget<T>> {
  @override
  void initState() {
    widget.controller.attach(this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    addPostFrameCallback(() {
      context.element!.setAttribute(
          widget.attribute, widget.builder(widget.controller.value));
    });
    return widget.child;
  }
}
