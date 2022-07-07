import 'package:wupper/wupper.dart';

class StatefulWidgetTest extends StatefulWidget {
  const StatefulWidgetTest() : super();

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
    return DivElementWidget(children: [
      ParagraphElementWidget(text: "Count: $count"),
      ButtonElementWidget(
        text: 'Add',
        onClick: add,
      ),

      ParagraphElementWidget(text: "Counted: $count"),
      // to demonstrate what happens when constructor is not const
      // ignore: prefer_const_constructors
      StateWidgetTest(),
      TimeWidgetTestNotConst(),

      ParagraphElementWidget(text: "TimeWrapper"),
      TimeWidgetWrapper(),
      TimeWidgetWrapper(),
      TimeWidgetWrapper(),

      ParagraphElementWidget(text: "Some other random tests"),
      const StateWidgetTest(),
      const TimeWidgetTest(),
      const TimeWidgetTest(),
      const TimeWidgetTest(),
      const TimeWidgetTest(),
      ParagraphElementWidget(text: "Count: $count"),
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
  int buildCount = 0;

  @override
  Widget build(BuildContext context) {
    buildCount++;

    final date = DateTime.now().toString();

    return DivElementWidget(children: [
      ParagraphElementWidget(
          text: "Start of stateful widget. Build count: $buildCount"),
      ParagraphElementWidget(text: "Statefull widget: $date"),
      const TimeWidgetTest(),
      const TimeWidgetTest(),
      TimeWidgetTestNotConst(),
      TimeWidgetTestNotConst(),
      ParagraphElementWidget(text: "end of test widget")
    ]);
  }
}

class TimeWidgetWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const TimeWidgetTest();
}

class TimeWidgetTest extends StatelessWidget {
  const TimeWidgetTest() : super();

  @override
  Widget build(BuildContext context) {
    final date = DateTime.now().toString();

    return ParagraphElementWidget(
        text: "I'm const (so shouldn't update): $date");
  }
}

class TimeWidgetTestNotConst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final date = DateTime.now().toString();

    return ParagraphElementWidget(
        text: "I' NOT const (so I SHOULD update): $date");
  }
}
