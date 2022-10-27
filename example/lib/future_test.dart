import 'package:wupper/wupper.dart';

class FutureTest extends StatefulWidget {
  const FutureTest() : super();
  @override
  StateWidget<FutureTest> createState() => FutureTestState();
}

class FutureTestState extends StateWidget<FutureTest> {
  int renderCount = 0;
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
          builder: (context, snap) {
            renderCount++;
            return ParagraphElementWidget(
                text: "Render count $renderCount Result ${snap.data}");
          })
    ]);
  }
}
