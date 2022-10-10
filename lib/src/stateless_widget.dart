import 'package:wupper/wupper.dart';

abstract class StatelessWidget extends Widget {
  const StatelessWidget({Key? key}) : super(key: key);

  /// Method which needs to be defined by the developer to describe the UI
  /// using HTML Elements. It is **not** recommended to use this method to
  /// append your widget in the [build] method of another widget! Use
  /// [widgetElement] for this!
  Widget build(BuildContext context);

  @override
  void inflate(BuildContext context) {
    context.widget = this;

    final child = build(context);
    context.cachedInflate(child);

    render(context);
  }
}
