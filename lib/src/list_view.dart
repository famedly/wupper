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

  final bool reverse;

  final UListElement _uListElement = UListElement();

  ListView({
    required this.itemBuilder,
    required this.initialItemCount,
    this.reverse = false,
    this.headerBuilder,
    this.footerBuilder,
    ListViewController? controller,
  }) : _controller = controller {
    _onUpdateAllSub =
        _controller?._updateAll.stream.listen(_onUpdateAllListener);
    _onUpdateSub = _controller?._update.stream.listen(_onUpdateListener);
    _onInsertSub = _controller?._insert.stream.listen(_onInsertListener);
    _onDeleteSub = _controller?._delete.stream.listen(_onDeleteListener);
  }

  bool get _isAtBottom =>
      _uListElement.scrollTop >=
      (_uListElement.scrollHeight - _uListElement.clientHeight);

  void _updateReverseScrollPosition() {
    _uListElement.scrollTop =
        (_uListElement.scrollHeight - _uListElement.clientHeight);
  }

  void _onUpdateAllListener(int i) {
    if (!mounted) {
      _onUpdateAllSub?.cancel();
      return;
    }
    initialItemCount = i;
    final isAtBottom = _isAtBottom;
    _uListElement.children = build().children;
    if (reverse && isAtBottom) _updateReverseScrollPosition();
  }

  int _calcRealIndex(int i) {
    if (reverse) {
      i = initialItemCount - i;
      if (footerBuilder != null) i++;
    } else {
      if (headerBuilder != null) i++;
    }
    return i;
  }

  void _onUpdateListener(int i) {
    if (!mounted) {
      _onUpdateSub?.cancel();
      return;
    }
    final isAtBottom = _isAtBottom;
    _uListElement.children[_calcRealIndex(i)] = itemBuilder(i, this);
    if (reverse && isAtBottom) _updateReverseScrollPosition();
  }

  void _onInsertListener(int i) {
    if (!mounted) {
      _onInsertSub?.cancel();
      return;
    }
    initialItemCount++;
    final isAtBottom = _isAtBottom;
    _uListElement.children.insert(_calcRealIndex(i), itemBuilder(i, this));
    if (reverse && isAtBottom) _updateReverseScrollPosition();
  }

  void _onDeleteListener(int i) {
    if (!mounted) {
      _onDeleteSub?.cancel();
      return;
    }
    initialItemCount--;
    final isAtBottom = _isAtBottom;
    _uListElement.children.removeAt(_calcRealIndex(i));
    if (reverse && isAtBottom) _updateReverseScrollPosition();
  }

  @override
  Element appendTo(Widget parent, [Object? cacheKey]) {
    final element = super.appendTo(parent, cacheKey);
    if (reverse) {
      addPostRenderCallback(() {
        _uListElement.scrollTop =
            (_uListElement.scrollHeight - _uListElement.clientHeight);
      });
    }
    return element;
  }

  @override
  Element build() {
    final headerBuilder = this.headerBuilder;
    final footerBuilder = this.footerBuilder;
    if (reverse) {
      return _uListElement
        ..children = [
          if (footerBuilder != null) footerBuilder(this),
          for (var i = initialItemCount - 1; i >= 0; i--) itemBuilder(i, this),
          if (headerBuilder != null) headerBuilder(this),
        ];
    }
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
  final StreamController<int> _updateAll = StreamController<int>.broadcast();
  final StreamController<int> _update = StreamController<int>.broadcast();
  final StreamController<int> _insert = StreamController<int>.broadcast();
  final StreamController<int> _delete = StreamController<int>.broadcast();

  void updateAll(int itemCount) => _updateAll.add(itemCount);
  void update(int index) => _update.add(index);
  void insert(int index) => _insert.add(index);
  void delete(int index) => _delete.add(index);
}
