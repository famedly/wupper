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
      const TimeWidgetTest(),
      const StateWidgetTest(),
      const TimeWidgetTest(),
      const TimeWidgetTest(),
      const TimeWidgetTest(),
      const TimeWidgetTest(),
      const TimeWidgetTest(),
      const TimeWidgetTest()
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
      const TimeWidgetTest(),
      const TimeWidgetTest(),
      const TimeWidgetTest(),
      ParagraphElementWidget(text: "end of test")
    ]);
  }
}

class TimeWidgetTest extends StatelessWidget {
  const TimeWidgetTest() : super();

  @override
  Widget build(BuildContext context) {
    print("Build widget test");
    final date = DateTime.now().toString();

    return ParagraphElementWidget(text: "Stateless widget: $date");
  }
}
