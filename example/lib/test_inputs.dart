import 'package:wupper/wupper.dart';

class TestInput extends StatefulWidget {
  const TestInput() : super();
  @override
  StateWidget<TestInput> createState() => TestInputState();
}

class TestInputState extends StateWidget<TestInput> {
  final controller = InputElementController();
  @override
  Widget build(BuildContext context) {
    return DivElementWidget(children: [
      ButtonElementWidget(
        text: "refresh",
        onClick: (p0) => setState(() {}),
      ),
      InputElementWidget(controller: controller),
      ParagraphElementWidget(text: "Date: ${DateTime.now()}"),
      FutureBuilder(
          future: Future.delayed(
              const Duration(seconds: 1), () => DateTime.now().toString()),
          builder: (context, snap) =>
              ParagraphElementWidget(text: "Result ${snap.data}"))
    ]);
  }
}
