import 'dart:html';

import 'package:meta/meta.dart';

import '../wupper.dart';

abstract class StatefulWidget extends Widget {
  const StatefulWidget() : super();

  @override
  void inflate(BuildContext context) {
    context.widget = this;

    context.widgetState = createState();
    context.widgetState!.inflate(context);

    render(context);
  }

  @protected
  StateWidget createState();
}

abstract class StateWidget<T extends StatefulWidget> {
  late BuildContext context;

  T get widget => context.widget! as T;
  bool get mounted => widget.mounted;

  /// Override this method to initialize the state of this widget. The [parent]
  /// value is already set when this method is called.
  void initState() {
    return;
  }

  void setState(VoidCallback callback) {
    if (this.context.widget == null) {
      throw Exception("The element need to have been render to update it.");
    }

    callback();

    print("Set state ${this.context.widget} ${this.context.element}");

    bool shouldRebuild = false;
    final context = this.context.overrideCallbacks();

    final child = build(context);

    // compare with old child
    if (child.hashCode != context.widget.hashCode) {
      shouldRebuild = true;
      print("Should rebuild ${child}");
    } else {
      print("Same hashcode");
    }

    if (shouldRebuild) {
      // we reuse the same context so we know what was the previous context to
      // reuse the same widgets
      // override callbacks
      context.child!.callbacks = context.callbacks;
      child.inflate(context.child!);

      render();
    }

    context.executeCallbacks();
  }

  void render() {
    widget.render(context);
  }

  @protected
  Widget build(BuildContext context);

  void inflate(BuildContext context) {
    this.context = context;

    initState();

    final child = build(context);

    final childContext = context.createChildContext();
    child.inflate(childContext);
  }
}
