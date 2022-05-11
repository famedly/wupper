import 'dart:async';
import 'dart:html';

import 'package:wupper/wupper.dart';

/// Very simple ListView with the ability to control the updates on insert,
/// update or remove items without rerendering everything by using a
/// `ListViewController`.
/// Set an [itemBuilder] and an [initialItemCount] to render the list.
/// Set [reverse] to true, to flip the direction of the items.
class ListView extends Widget {
  final ListViewController? _controller;
  final Element Function(int i, Widget parent) itemBuilder;
  final Element Function(Widget parent)? headerBuilder;
  final Element Function(Widget parent)? footerBuilder;
  int initialItemCount;

  late final StreamSubscription? _onUpdateAllSub;
  late final StreamSubscription? _onUpdateSub;
  late final StreamSubscription? _onInsertSub;
  late final StreamSubscription? _onDeleteSub;

  final UListElement _uListElement = UListElement();

  ListView({
    required this.itemBuilder,
    required this.initialItemCount,
    this.headerBuilder,
    this.footerBuilder,
    ListViewController? controller,
  }) : _controller = controller {
    // attach the list to the controller
    _controller?._attachView(this);
    _onUpdateAllSub =
        _controller?._updateAll.stream.listen(_onUpdateAllListener);
    _onUpdateSub = _controller?._update.stream.listen(_onUpdateListener);
    _onInsertSub = _controller?._insert.stream.listen(_onInsertListener);
    _onDeleteSub = _controller?._delete.stream.listen(_onDeleteListener);
  }

  void _onUpdateAllListener(int i) {
    if (!mounted) {
      _onUpdateAllSub?.cancel();
      return;
    }

    if (i != initialItemCount) {
      print("complete rebuild");
      initialItemCount = i;
      _uListElement.children = build().children;
      return;
    }
    print("list: ${_uListElement.id}");
    final element = appNode.querySelector("#" + _uListElement.id);
    print("element: ${element}");
    if (element == null) return;
    var pos = 0;
    for (var child in element.children) {
      final delta = element.scrollTop - child.offsetTop;
      final deltaEnd = delta + element.clientHeight;
      pos++;
      if (delta < 0 && deltaEnd > 0) {
        _onUpdateListener(pos);
        print("scroll top: ${child.id} $delta $deltaEnd");
      }
    }
  }

  void _onUpdateListener(int i) {
    if (!mounted) {
      _onUpdateSub?.cancel();
      return;
    }
    final index = headerBuilder != null ? i + 1 : 1;
    _uListElement.children[index] = itemBuilder(i, this);
  }

  void _onInsertListener(int i) {
    if (!mounted) {
      _onInsertSub?.cancel();
      return;
    }
    initialItemCount++;
    final index = headerBuilder != null ? i + 1 : 1;
    _uListElement.children.insert(index, itemBuilder(i, this));
  }

  void _onDeleteListener(int i) {
    if (!mounted) {
      _onDeleteSub?.cancel();
      return;
    }
    initialItemCount--;
    final index = headerBuilder != null ? i + 1 : 1;
    _uListElement.children.removeAt(index);
  }

  @override
  Element build() {
    final headerBuilder = this.headerBuilder;
    final footerBuilder = this.footerBuilder;

    return _uListElement
      ..children = [
        if (headerBuilder != null) headerBuilder(this),
        for (var i = 0; i < initialItemCount; i++) itemBuilder(i, this),
        if (footerBuilder != null) footerBuilder(this),
      ];
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
  List<Element> get items => _view?._uListElement.children ?? [];
}
