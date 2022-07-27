import 'package:wupper/wupper.dart';

class LegacyStateTest extends StatelessWidget {
  final State<int> value = State<int>(0);
  final State<int> value2 = State<int>(0);

  void add(_) {
    value.set(value.state + 1);
    value2.set(value.state);
  }

  @override
  Widget build(BuildContext context) {
    return DivElementWidget(children: [
      value.bind(
          context,
          (context, value) => DivElementWidget(children: [
                ButtonElementWidget(text: "Update", onClick: add),
                ParagraphElementWidget(text: value.toString())
              ])),
      value2.bindText(
          ParagraphElementWidget(text: "hello"), (i) => "result $i"),
      value2.bindAttribute(ParagraphElementWidget(text: "attribute"), "test",
          (i) => "result $i"),
    ]);
  }
}
