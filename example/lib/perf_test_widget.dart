import 'package:try_wupper/perf_test_page.dart';
import 'package:try_wupper/stateful_widget_test.dart';
import 'package:wupper/wupper.dart';

class PerfTestWidget extends StatefulWidget {
  const PerfTestWidget({required this.itemCount, required this.listType})
      : super();

  final int itemCount;
  final ListType listType;
  @override
  StateWidget<StatefulWidget> createState() => _PerfTestWidgetState();
}

class _PerfTestWidgetState extends StateWidget<PerfTestWidget> {
  int refreshCount = 0;
  final textController = InputElementController();
  final listController = ListViewController();
  final fixedListController = FixedHeightListViewController();

  @override
  Widget build(BuildContext context) {
    refreshCount++;
    return DivElementWidget(children: [
      if (widget.listType == ListType.listView)
        DivElementWidget(children: [
          InputElementWidget(controller: textController),
          ButtonElementWidget(
              text: "refresh",
              onClick: (_) {
                listController.update(int.parse(textController.value!));
                textController.value = "";
              }),
          ButtonElementWidget(
              text: "delete",
              onClick: (_) {
                listController.delete(int.parse(textController.value!));
                textController.value = "";
              }),
          ButtonElementWidget(
              text: "refresh all",
              onClick: (_) {
                listController.updateAll(widget.itemCount);
                textController.value = "";
              })
        ]),
      if (widget.listType == ListType.fixedListView)
        DivElementWidget(children: [
          InputElementWidget(controller: textController),
          ButtonElementWidget(
              text: "refresh element",
              onClick: (_) {
                fixedListController.update(int.parse(textController.value!));
                textController.value = "";
              }),
          ButtonElementWidget(
              text: "delete",
              onClick: (_) {
                fixedListController.delete(int.parse(textController.value!));
                textController.value = "";
              }),
          ButtonElementWidget(
              text: "refresh all",
              onClick: (_) {
                fixedListController.updateAll(widget.itemCount);
                textController.value = "";
              })
        ]),
      ParagraphElementWidget(text: "My element: $refreshCount"),
      if (widget.listType == ListType.listView)
        ListView(
            controller: listController,
            itemBuilder: itemConstructor,
            initialItemCount: widget.itemCount),
      if (widget.listType == ListType.fixedListView)
        FixedHeightListView(
            controller: fixedListController,
            itemBuilder: itemConstructor,
            classes: {'div1'},
            itemDefaultHeight: 25,
            buffer: 0,
            initialItemCount: widget.itemCount),
      if (widget.listType == ListType.forLoop)
        for (var i = 0; i < widget.itemCount; i++) PerfTestItem(i),
    ]);
  }

  Widget itemConstructor(BuildContext context, int pos) {
    return DivElementWidget(
      className: "flex",
      children: [
        ParagraphElementWidget(
          text: "$pos: ",
          postCreation: (e) {
            e.style.margin = "0px";
          },
        ),
        const TimeWidgetTest(),
        if (widget.listType != ListType.forLoop)
          ButtonElementWidget(
              text: "refresh element",
              onClick: (_) {
                if (widget.listType == ListType.listView) {
                  listController.update(pos);
                } else if (widget.listType == ListType.fixedListView) {
                  fixedListController.update(pos);
                }
              }),
        if (widget.listType != ListType.forLoop)
          ButtonElementWidget(
              text: "delete",
              onClick: (_) {
                if (widget.listType == ListType.listView) {
                  listController.delete(pos);
                } else if (widget.listType == ListType.fixedListView) {
                  fixedListController.delete(pos);
                }
              }),
      ],
      postCreation: (e) => e.style.height = "25px",
    );
  }
}

class PerfTestItem extends StatelessWidget {
  const PerfTestItem(this.pos) : super();

  final int pos;
  @override
  Widget build(BuildContext context) {
    return DivElementWidget(className: "flex", children: [
      ParagraphElementWidget(
        text: "$pos: ",
        postCreation: (e) => e.style.margin = "0px",
      ),
      const TimeWidgetTest()
    ]);
  }
}
