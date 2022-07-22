import 'package:wupper/wupper.dart';

class FutureTest extends StatefulWidget {
  const FutureTest() : super();
  @override
  StateWidget<FutureTest> createState() => FutureTestState();
}

class FutureTestState extends StateWidget<FutureTest> {
  @override
  Widget build(BuildContext context) {
    return DivElementWidget(children: [
      ButtonElementWidget(
        text: "refresh",
        onClick: (p0) => setState(() {}),
      ),
      FutureBuilder(
          future: Future.delayed(
              const Duration(seconds: 1), () => DateTime.now().toString()),
          builder: (context, snap) =>
              ParagraphElementWidget(text: "Result ${snap.data}"))
    ]);
  }
}
