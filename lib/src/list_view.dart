import 'dart:async';
import 'dart:html';

import 'package:wupper/wupper.dart';

/// Very simple ListView with the ability to control the updates on insert,
/// update or remove items without rerendering everything by using a
/// `ListViewController`.
/// Set an [itemBuilder] and an [initialItemCount] to render the list.
/// Set [reverse] to true, to flip the direction of the items.
class ListView extends StatefulWidget {
  final ListViewController? controller;
  final Widget Function(BuildContext context, int i) itemBuilder;
  final Widget Function(BuildContext context)? headerBuilder;
  final Widget Function(BuildContext context)? footerBuilder;
  final int initialItemCount;

  final String? id;
  final String? className;
  final void Function(Element)? postCreation;
  const ListView(
      {required this.itemBuilder,
      required this.initialItemCount,
      this.headerBuilder,
      this.footerBuilder,
      this.controller,
      this.id,
      this.className,
      this.postCreation})
      : super();

  @override
  StateWidget<StatefulWidget> createState() => _ListViewState();
}

class _ListViewState extends StateWidget<ListView> {
  late final StreamSubscription? _onUpdateAllSub;
  late final StreamSubscription? _onUpdateSub;
  late final StreamSubscription? _onInsertSub;
  late final StreamSubscription? _onDeleteSub;

  final UListElement _uListElement = UListElement();

  int itemCount = 0;
  @override
  void initState() {
    itemCount = widget.initialItemCount;

    // attach the list to the controller
    widget.controller?._attachView(widget);
    _onUpdateAllSub =
        widget.controller?._updateAll.stream.listen(_onUpdateAllListener);
    _onUpdateSub = widget.controller?._update.stream.listen(_onUpdateListener);
    _onInsertSub = widget.controller?._insert.stream.listen(_onInsertListener);
    _onDeleteSub = widget.controller?._delete.stream.listen(_onDeleteListener);

    super.initState();
  }

  void _onUpdateAllListener(int i) {
    if (!mounted) {
      _onUpdateAllSub?.cancel();
      return;
    }
    itemCount = i;

    // TODO: update element
    _uListElement.children = renderChilds(context);
  }

  void _onUpdateListener(int i) {
    if (!mounted) {
      _onUpdateSub?.cancel();
      return;
    }
    final index = widget.headerBuilder != null ? i + 1 : 1;

    final child = widget.itemBuilder(context, i);

    if (child is StatelessWidget) child.build(context);

    _uListElement.children[index] = child.render(context);
  }

  void _onInsertListener(int i) {
    if (!mounted) {
      _onInsertSub?.cancel();
      return;
    }
    itemCount++;
    final index = widget.headerBuilder != null ? i + 1 : 1;

    final childContext = BuildContext.build(context);
    final newWidget = widget.itemBuilder(context, i);
    newWidget.inflate(childContext);

    _uListElement.children.insert(index, childContext.element!);
  }

  void _onDeleteListener(int i) {
    if (!mounted) {
      _onDeleteSub?.cancel();
      return;
    }
    itemCount--;
    final index = widget.headerBuilder != null ? i + 1 : 1;
    _uListElement.children.removeAt(index);
  }

  Widget? headerWidget;
  Widget? footerWidget;
  List<Widget>? widgets;

  void inflateChildren(BuildContext context) {
    if (headerWidget is StatelessWidget) {
      (headerWidget as StatelessWidget).build(context);
    }

    if (footerWidget is StatelessWidget) {
      (footerWidget as StatelessWidget).build(context);
    }

    for (final widget in widgets ?? []) {
      if (widget is StatelessWidget) {
        widget.build(context);
      }
    }
  }

  List<Element> renderChilds(BuildContext context) => [
        if (headerWidget != null) headerWidget!.render(context),
        for (final widget in widgets ?? []) widget.render(context),
        if (footerWidget != null) footerWidget!.render(context),
      ];

  Element renderElement(BuildContext context) {
    return _uListElement..children = renderChilds(context);
  }

  @override
  Widget build(context) {
    itemCount = widget.initialItemCount;

    // construct the UI
    headerWidget = widget.headerBuilder?.call(context);
    footerWidget = widget.footerBuilder?.call(context);

    widgets?.clear();
    widgets ??= [];

    for (var i = 0; i < itemCount; i++) {
      final child = widget.itemBuilder(context, i);
      widgets!.add(child);
    }

    // build the children / inflate
    inflateChildren(context);

    return DivElementWidget(
        id: widget.id,
        children: [
          if (headerWidget != null) headerWidget!,
          ...widgets!,
          if (footerWidget != null) footerWidget!
        ],
        className: widget.className,
        postCreation: widget.postCreation);
  }
}

/// Controller for the ListView. If you want to rerender the whole list at
/// once, just call `updateAll(itemCount)`. To only render the things that have
/// changed, use:
/// - `update(index)`
/// - `insert(index)`
/// - `delete(index)`
class ListViewController {
  ListView? _view;
  final StreamController<int> _updateAll = StreamController<int>.broadcast();
  final StreamController<int> _update = StreamController<int>.broadcast();
  final StreamController<int> _insert = StreamController<int>.broadcast();
  final StreamController<int> _delete = StreamController<int>.broadcast();

  /// connects the given [ListView] with the controller in order to access its
  /// properties
  void _attachView(ListView listView) => _view = listView;

  /// re-renders the entire list with the given new [itemCount]
  void updateAll(int itemCount) => _updateAll.add(itemCount);

  /// updates the item at offset [index]
  void update(int index) => _update.add(index);

  /// inserts an item at offset [index]
  void insert(int index) => _insert.add(index);

  /// deletes the item at offset [index]
  void delete(int index) => _delete.add(index);

  /// returns every [Element] which is currently present in the attached view
  //List<Element> get items => _view?._uListElement.children ?? [];
}
