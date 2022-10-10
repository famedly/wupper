import 'package:try_wupper/perf_test_widget.dart';
import 'package:wupper/wupper.dart';

import 'stateful_widget_test.dart';

enum ListType { forLoop, listView, fixedListView }

class PerfTestPage extends StatefulWidgetTest {
  const PerfTestPage() : super();
  @override
  StateWidget<StatefulWidget> createState() => _CustomWidgetTest();
}

class _CustomWidgetTest extends StateWidget<PerfTestPage> {
  String text = "oups";
  int itemCount = 800;

  @override
  void initState() {
    text = "nice, init state works!";
    context.addPostFrameCallback(() {
      text = "$text hey";
      setState(() {});
    });
    super.initState();
  }

  DateTime? start;
  DateTime? end;

  ListType useFixedList = ListType.forLoop;

  void setTime() {
    start = DateTime.now();

    addPostFrameCallback(() {
      end = DateTime.now();

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return DivElementWidget(children: [
      ParagraphElementWidget(text: text),
      if (start != null && end != null)
        ParagraphElementWidget(
            text:
                "Diff: ${end!.difference(start!).inMilliseconds}ms  ${(end!.difference(start!).inMilliseconds / itemCount).toStringAsPrecision(2)} ms/item ($itemCount items)"),
      ButtonElementWidget(
          text: "Refresh",
          onClick: (_) {
            setState(() {
              setTime();
            });
          }),
      ButtonElementWidget(
          text: "Increment count $itemCount items",
          onClick: (_) {
            setState(() {
              itemCount++;
              setTime();
            });
          }),
      DivElementWidget(children: [
        ParagraphElementWidget(text: "List type: $useFixedList"),
        ButtonElementWidget(
            text: "list",
            onClick: (_) {
              setState(() {
                if (useFixedList == ListType.listView) {
                  useFixedList = ListType.forLoop;
                } else {
                  useFixedList = ListType.listView;
                }
              });
            }),
        ButtonElementWidget(
            text: "fixed list",
            onClick: (_) {
              setState(() {
                if (useFixedList == ListType.fixedListView) {
                  useFixedList = ListType.forLoop;
                } else {
                  useFixedList = ListType.fixedListView;
                }
              });
            }),
      ]),
      PerfTestWidget(itemCount: itemCount, listType: useFixedList)
    ]);
  }
}
