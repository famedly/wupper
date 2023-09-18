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
  final Set<String>? classes;
  final void Function(Element)? postCreation;
  const ListView({
    Key? key,
    required this.itemBuilder,
    required this.initialItemCount,
    this.headerBuilder,
    this.footerBuilder,
    this.controller,
    this.id,
    this.className,
    this.classes,
    this.postCreation,
  }) : super(key: key);

  @override
  StateWidget<StatefulWidget> createState() => ListViewState();
}

class ListViewState extends StateWidget<ListView> {
  late final StreamSubscription? _onUpdateAllSub;
  late final StreamSubscription? _onUpdateSub;
  late final StreamSubscription? _onInsertSub;
  late final StreamSubscription? _onDeleteSub;
  StreamSubscription? _onScrollSub;

  late UListElement _uListElement;

  int itemCount = 0;
  @override
  void initState() {
    itemCount = widget.initialItemCount;

    // attach the list to the controller
    widget.controller?._attachView(this);
    _onUpdateAllSub =
        widget.controller?._updateAll.stream.listen(_onUpdateAllListener);
    _onUpdateSub = widget.controller?._update.stream.listen(_onUpdateListener);
    _onInsertSub = widget.controller?._insert.stream.listen(_onInsertListener);
    _onDeleteSub = widget.controller?._delete.stream.listen(_onDeleteListener);

    super.initState();
  }

  void _onScrollListener(_) {
    if (!mounted) {
      _onScrollSub?.cancel();
      return;
    }
    widget.controller?._onScroll.add(context.element!);
  }

  void _onUpdateAllListener(int i) {
    if (!mounted) {
      _onUpdateAllSub?.cancel();
      return;
    }
    itemCount = i;

    setState(() {});
  }

  int widgetIndex(int i) => widget.headerBuilder != null ? i + 1 : i;

  void _onUpdateListener(int i) {
    if (!mounted) {
      _onUpdateSub?.cancel();
      return;
    }
    final context = this.context.child!;
    final childContext = context.createChildContext(copyOldProperties: false);

    final child = widget.itemBuilder(context, i);
    child.inflate(childContext);
    context.replaceDomChildrenWith(widgetIndex(i), childContext);
  }

  void _onInsertListener(int i) {
    if (!mounted) {
      _onInsertSub?.cancel();
      return;
    }

    itemCount++;

    final context = this.context.child!;
    final childContext = context.createChildContext(copyOldProperties: false);

    final child = widget.itemBuilder(context, i);
    child.inflate(childContext);
    context.insertDomChildren(widgetIndex(i), childContext);
  }

  void _onDeleteListener(int i) {
    if (!mounted) {
      _onDeleteSub?.cancel();
      return;
    }
    itemCount--;

    final context = this.context.child!;
    context.deleteDomChildren(widgetIndex(i));
  }

  @override
  Widget build(context) {
    itemCount = widget.initialItemCount;

    if (widget.controller?.onScroll != null) {
      addPostFrameCallback(() {
        _onScrollSub = this.context.element?.onScroll.listen(_onScrollListener);
      });
    }

    // construct the UI
    final headerWidget = widget.headerBuilder?.call(context);
    final footerWidget = widget.footerBuilder?.call(context);

    final widgets = [];

    for (var i = 0; i < itemCount; i++) {
      widgets.add(widget.itemBuilder(context, i));
    }

    return UListElementWidget(
        id: widget.id,
        children: [
          if (headerWidget != null) headerWidget,
          ...widgets,
          if (footerWidget != null) footerWidget
        ],
        className: widget.className,
        classes: widget.classes,
        postCreation: (e) {
          _uListElement = e as UListElement;
          widget.postCreation?.call(e);
        });
  }
}

/// Controller for the ListView. If you want to rerender the whole list at
/// once, just call `updateAll(itemCount)`. To only render the things that have
/// changed, use:
/// - `update(index)`
/// - `insert(index)`
/// - `delete(index)`
class ListViewController {
  ListViewState? _view;
  final StreamController<int> _updateAll = StreamController<int>.broadcast();
  final StreamController<int> _update = StreamController<int>.broadcast();
  final StreamController<int> _insert = StreamController<int>.broadcast();
  final StreamController<int> _delete = StreamController<int>.broadcast();
  final StreamController<Element> _onScroll =
      StreamController<Element>.broadcast();
  Stream<Element> get onScroll => _onScroll.stream;

  /// connects the given [ListView] with the controller in order to access its
  /// properties
  void _attachView(ListViewState listView) => _view = listView;

  /// re-renders the entire list with the given new [itemCount]
  void updateAll(int itemCount) => _updateAll.add(itemCount);

  /// updates the item at offset [index]
  void update(int index) => _update.add(index);

  /// inserts an item at offset [index]
  void insert(int index) => _insert.add(index);

  /// deletes the item at offset [index]
  void delete(int index) => _delete.add(index);

  /// returns every [Element] which is currently present in the attached view
  List<Element> get items => _view?._uListElement.children ?? [];
}
