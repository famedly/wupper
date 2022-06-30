import 'dart:async';
import 'dart:html';

import 'package:wupper/wupper.dart';

/// Very simple ListView with the ability to control the updates on insert,
/// update or remove items without rerendering everything by using a
/// `ListViewController`.
/// Set an [itemBuilder] and an [initialItemCount] to render the list.
/// Set [reverse] to true, to flip the direction of the items.
class ListView extends StatelessWidget {
  final ListViewController? _controller;
  final Element Function(BuildContext context, int i) itemBuilder;
  final Element Function(BuildContext context)? headerBuilder;
  final Element Function(BuildContext context)? footerBuilder;
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
    initialItemCount = i;
    _uListElement.children = build(context).children;
  }

  void _onUpdateListener(int i) {
    if (!mounted) {
      _onUpdateSub?.cancel();
      return;
    }
    final index = headerBuilder != null ? i + 1 : 1;
    _uListElement.children[index] = itemBuilder(context, i);
  }

  void _onInsertListener(int i) {
    if (!mounted) {
      _onInsertSub?.cancel();
      return;
    }
    initialItemCount++;
    final index = headerBuilder != null ? i + 1 : 1;
    _uListElement.children.insert(index, itemBuilder(context, i));
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
  Widget build(context) {
    final headerBuilder = this.headerBuilder;
    final footerBuilder = this.footerBuilder;
    return _uListElement
      ..children = [
        if (headerBuilder != null) headerBuilder(context),
        for (var i = 0; i < initialItemCount; i++) itemBuilder(context, i),
        if (footerBuilder != null) footerBuilder(context),
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
