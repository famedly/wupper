import 'dart:html';

import 'package:meta/meta.dart';

import '../wupper.dart';

abstract class StatefulWidget extends Widget {
  const StatefulWidget({Key? key}) : super(key: key);

  @override
  void inflate(BuildContext context) {
    bool sameRunType = context.widget.runtimeType == runtimeType;
    bool sameKey = context.widget?.key == key;

    context.widget = this;

    if (context.widgetState == null || !(sameRunType && sameKey)) {
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
  bool get mounted => context.mounted;

  /// Override this method to initialize the state of this widget. The [parent]
  /// value is already set when this method is called.
  void initState() {
    return;
  }

  void setState(VoidCallback callback) {
    if (context.widget == null) {
      throw Exception("The element need to have been render to update it.");
    }
    final oldElement = context.getElement();

    if (oldElement?.isConnected != true) {
      window.console.error("$this not connected.");
      throw ("Element not connected");
    }

    // Create a local only context where the callback list is overrided
    final oldCallBacks = context.callbacks;
    context = context.overrideCallbacks();

    callback();

    final child = build(context);

    final childContext =
        (context.child?.widget.runtimeType == child.runtimeType &&
                context.child != null)
            ? context.child!
            : context.createChildContext(
                copyOldProperties: false,
                copyOldElement:
                    context.child?.widget.runtimeType == child.runtimeType);

    // we reuse the same context so we know what was the previous context to
    // reuse the same widgets
    // override callbacks
    context.child!.callbacks = context.callbacks;

    // Import back the function local context to the class local context.
    // This was needed to override the callbacks list.
    child.inflate(childContext);

    render();

    // update the previous widget
    oldElement?.replaceWith(childContext.getElement()!);

    // the element should now be attached to the DOM. Else, we run into an error and the app is not
    // functioning properly
    assert(context.getElement()?.isConnected == true);

    // exectue callbacks and restore the other ones
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
