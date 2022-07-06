import 'package:wupper/wupper.dart';

class StatefulWidgetTest extends StatefulWidget {
  @override
  StateWidget<StatefulWidget> createState() => _StatefulWidgetTestState();
}

class _StatefulWidgetTestState extends StateWidget<StatefulWidgetTest> {
  int count = 0;

  void add(_) {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Build stateful widget from the text");
    return DivElementWidget(children: [
      ParagraphElementWidget(text: "Count: $count"),
      ButtonElementWidget(
        text: 'Add',
        onClick: add,
      ),
      const StateWidgetTest(),
      const WidgetTest(),
      const StateWidgetTest(),
      const WidgetTest(),
      const WidgetTest(),
      const WidgetTest(),
      const WidgetTest(),
      const WidgetTest(),
      WidgetTest()
    ]);
  }
}

class StateWidgetTest extends StatefulWidget {
  const StateWidgetTest() : super();
  @override
  StateWidget<StatefulWidget> createState() => _StateWidgetTestState();
}

class _StateWidgetTestState extends StateWidget<StateWidgetTest> {
  @override
  Widget build(BuildContext context) {
    print("Build state widget test");
    final date = DateTime.now().toString();

    return DivElementWidget(children: [
      ParagraphElementWidget(text: "Statefull widget: $date"),
      WidgetTest(),
      WidgetTest(),
      WidgetTest(),
      ParagraphElementWidget(text: "end of test")
    ]);
  }
}

class WidgetTest extends StatelessWidget {
  const WidgetTest() : super();

  @override
  Widget build(BuildContext context) {
    print("Build widget test");
    final date = DateTime.now().toString();

    return DivElementWidget(children: [
      ParagraphElementWidget(text: "Stateless widget: $date"),
    ]);
  }
}
