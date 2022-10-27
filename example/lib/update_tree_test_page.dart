import 'package:wupper/wupper.dart';

class UpdateTreeTestPage extends StatefulWidget {
  const UpdateTreeTestPage({Key? key}) : super(key: key);

  @override
  UpdateTreeTestPageState createState() => UpdateTreeTestPageState();
}

class UpdateTreeTestPageState extends StateWidget<UpdateTreeTestPage> {
  final InputElementController controller = InputElementController();
  String diff = "";

  void update(_) {
    const N = 100;
    final before = DateTime.now();
    for (var i = 0; i < N; i++) {
      setState(() {});
    }
    final after = DateTime.now();

    setState(() {
      diff = (after.difference(before).inMilliseconds / N).toString();
    });
  }

  @override
  void initState() {
    addPostFrameCallback(() {
      update(null);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DivElementWidget(children: [
      InputElementWidget(controller: controller),
      ButtonElementWidget(text: "Hello", onClick: update),
      ParagraphElementWidget(text: "diff: $diff millliseconds per update"),
      for (var i = 0; i < 80; i++)
        ParagraphElementWidget(text: DateTime.now().toString()),
    ]);
  }
}
