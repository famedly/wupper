import 'package:wupper/wupper.dart';

import 'stateful_widget_test.dart';

class ListViewTest extends StatefulWidget {
  @override
  StateWidget<StatefulWidget> createState() => _ListViewTestState();
}

class _ListViewTestState extends StateWidget<ListViewTest> {
  int count = 20;
  final controller = ListViewController();

  void add(_) {
    setState(() {
      count++;
    });

    //controller.insert(count);
  }

  @override
  Widget build(BuildContext context) {
    return DivElementWidget(children: [
      ParagraphElementWidget(text: "Count: $count"),
      ButtonElementWidget(
        text: 'Add',
        onClick: add,
      ),
      ListView(
          itemBuilder: (context, pos) => ListItemWidget(pos: pos),
          initialItemCount: count)
    ]);
  }
}

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({required this.pos}) : super();

  final int pos;
  @override
  Widget build(BuildContext context) {
    final date = DateTime.now().toString();

    return DivElementWidget(children: [
      ParagraphElementWidget(text: "ListItemWidget: $pos $date"),
      const TimeWidgetTest() // This should not rebuild
    ]);
  }
}
