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
      const KeyTest(),
      // ignore: prefer_const_constructors
      KeyTest(key: Key("test")),
      KeyTest(key: Key(count.toString())),
      ParagraphElementWidget(text: "TimeWrapper"),
      TimeWidgetWrapper(),
      TimeWidgetWrapper(),
      TimeWidgetWrapper(),
      const TimeWidgetStatefullTest(),
      // ignore: prefer_const_constructors
      TimeWidgetStatefullTest(),

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
        text: "I'm const (so shouldn't update): $date",
        postCreation: (e) {
          e.style.marginTop = "0";
          e.style.marginBottom = "0";
          e.style.marginLeft = "0";
          e.style.marginRight = "auto";
        });
  }
}

class TimeWidgetStatefullTest extends StatefulWidget {
  const TimeWidgetStatefullTest() : super();
  @override
  StateWidget<StatefulWidget> createState() => _TimeWidgetStatefullTest();
}

class _TimeWidgetStatefullTest extends StateWidget<TimeWidgetStatefullTest> {
  @override
  Widget build(BuildContext context) {
    return const TimeWidgetTest();
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

class KeyTest extends StatefulWidget {
  const KeyTest({Key? key}) : super(key: key);

  @override
  StateWidget<StatefulWidget> createState() => KeyTestState();
}

class KeyTestState extends StateWidget<KeyTest> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    final date = DateTime.now().toString();
    value++;

    return ParagraphElementWidget(
      text:
          "I'm statefull but I can have a key (${widget.key?.value}) : $date updates: $value",
    );
  }
}
