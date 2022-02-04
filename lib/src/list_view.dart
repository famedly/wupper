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
  int initialItemCount;

  late final StreamSubscription? _onUpdateAllSub;
  late final StreamSubscription? _onUpdateSub;
  late final StreamSubscription? _onInsertSub;
  late final StreamSubscription? _onDeleteSub;

  final bool reverse;

  final UListElement _uListElement = UListElement();

  ListView({
    required this.itemBuilder,
    required this.initialItemCount,
    this.reverse = false,
    ListViewController? controller,
  }) : _controller = controller {
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
    setState(() {
      initialItemCount = i;
    });
  }

  void _onUpdateListener(int i) {
    if (!mounted) {
      _onUpdateSub?.cancel();
      return;
    }
    _uListElement.children[i] = itemBuilder(i, this);
  }

  void _onInsertListener(int i) {
    if (!mounted) {
      _onInsertSub?.cancel();
      return;
    }
    initialItemCount++;
    _uListElement.children.insert(i, itemBuilder(i, this));
  }

  void _onDeleteListener(int i) {
    if (!mounted) {
      _onDeleteSub?.cancel();
      return;
    }
    initialItemCount--;
    _uListElement.children.removeAt(i);
  }

  @override
  Element build() => _uListElement
    ..children = [
      if (reverse)
        for (var i = initialItemCount - 1; i >= 0; i--) itemBuilder(i, this)
      else
        for (var i = 0; i < initialItemCount; i++) itemBuilder(i, this),
    ];
}

/// Controller for the ListView. If you want to rerender the whole list at
/// once, just call `updateAll(itemCount)`. To only render the things that have
/// changed, use:
/// - `update(index)`
/// - `insert(index)`
/// - `delete(index)`
class ListViewController {
  final StreamController<int> _updateAll = StreamController<int>();
  final StreamController<int> _update = StreamController<int>();
  final StreamController<int> _insert = StreamController<int>();
  final StreamController<int> _delete = StreamController<int>();

  void updateAll(int itemCount) => _updateAll.add(itemCount);
  void update(int index) => _update.add(index);
  void insert(int index) => _insert.add(index);
  void delete(int index) => _delete.add(index);
}
