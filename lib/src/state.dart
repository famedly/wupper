import 'package:wupper/wupper.dart';

@Deprecated("Please use Stateful widgets instead")
class State<T> {
  @Deprecated("Please use StatefulWidget instead")
  State(T initState) : _state = initState;

  T get state => _state;
  bool get hasListener => controllers.isNotEmpty;

  final Set<StateWidget> controllers = {};

  T _state;
  void set(T value) {
    _state = value;
    controllers.removeWhere((controller) => !controller.context.mounted);

    for (final controller in controllers) {
      controller.setState(() {});
    }
  }

  Widget bind(BuildContext context,
          Widget Function(BuildContext context, T value) builder) =>
      StateSubscriptionWidget<T>(builder: builder, state: this);

  Widget bindText(
    Widget element, [
    String Function(T value)? builder,
  ]) {
    builder ??= (value) => value.toString();
    return StateTextWidget<T>(child: element, state: this, builder: builder);
  }

  Widget bindAttribute(
    Widget element,
    String attribute, [
    String Function(T value)? builder,
  ]) {
    builder ??= (value) => value.toString();

    return StateAttributeWidget<T>(
        child: element, state: this, builder: builder, attribute: attribute);
  }
}

// Widget builder
class StateSubscriptionWidget<T> extends StatefulWidget {
  final Widget Function(BuildContext, T) builder;
  final State<T> state;

  const StateSubscriptionWidget({required this.builder, required this.state})
      : super();
  @override
  StateWidget<StateSubscriptionWidget<T>> createState() =>
      StateSubscriptionWidgetState<T>();
}

class StateSubscriptionWidgetState<T>
    extends StateWidget<StateSubscriptionWidget<T>> {
  @override
  void initState() {
    widget.state.controllers.add(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) =>
      widget.builder(context, widget.state.state);
}

// Text
class StateTextWidget<T> extends StatefulWidget {
  final State<T> state;

  final String Function(T value) builder;
  final Widget child;

  const StateTextWidget(
      {required this.child, required this.state, required this.builder})
      : super();

  @override
  StateWidget<StateTextWidget<T>> createState() => StateTextWidgetState<T>();
}

class StateTextWidgetState<T> extends StateWidget<StateTextWidget<T>> {
  @override
  void initState() {
    widget.state.controllers.add(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    addPostFrameCallback(() {
      context.getElement()!.text = widget.builder(widget.state.state);
    });
    return widget.child;
  }
}

// Attribute

class StateAttributeWidget<T> extends StatefulWidget {
  final String Function(T value) builder;
  final Widget child;
  final String attribute;

  final State<T> state;

  const StateAttributeWidget(
      {required this.child,
      required this.builder,
      required this.attribute,
      required this.state})
      : super();

  @override
  StateWidget<StateAttributeWidget<T>> createState() =>
      StateAttributeWidgetState<T>();
}

class StateAttributeWidgetState<T>
    extends StateWidget<StateAttributeWidget<T>> {
  @override
  void initState() {
    widget.state.controllers.add(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    addPostFrameCallback(() {
      context.getElement()!
          .setAttribute(widget.attribute, widget.builder(widget.state.state));
    });
    return widget.child;
  }
}
