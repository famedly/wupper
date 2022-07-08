import 'dart:html';

import 'package:meta/meta.dart';

import '../wupper.dart';

abstract class StatefulWidget extends Widget {
  const StatefulWidget() : super();

  @override
  void inflate(BuildContext context) {
    context.widget = this;

    if (context.widgetState == null || context.widget.hashCode != hashCode) {
      context.widgetState = createState();
      context.widgetState!.inflate(context);
    } else {
      context.widgetState!.inflate(context, runInitState: false);
    }

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
    if (context.widget == null) {
      throw Exception("The element need to have been render to update it.");
    }

    // Create a local only context where the callback list is overrided
    final oldCallBacks = context.callbacks;
    context = context.overrideCallbacks();

    callback();

    final child = build(context);

    // compare with old child
    if (context.shouldReRender(child)) {
      final childContext =
          (context.child?.widget.runtimeType == child.runtimeType &&
                  context.child != null)
              ? context.child!
              : context.createChildContext(inheritChildren: false);

      // we reuse the same context so we know what was the previous context to
      // reuse the same widgets
      // override callbacks
      context.child!.callbacks = context.callbacks;

      // Import back the function local context to the class local context.
      // This was needed to override the callbacks list.
      child.inflate(childContext);

      // really important!
      //this.context.importContext(context);
      render();
    }

    context.executeCallbacks();
    context.callbacks = oldCallBacks;
  }

  void addPostFrameCallback(VoidCallback callback) =>
      context.addPostFrameCallback(callback);

  void render() {
    widget.render(context);
  }

  @protected
  Widget build(BuildContext context);

  void inflate(BuildContext context, {bool runInitState = true}) {
    this.context = context;

    if (runInitState) {
      initState();
    }

    final child = build(context);
    context.cachedInflate(child);
  }
}
