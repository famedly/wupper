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
  final int itemDefaultHeight;
  final Element Function(int i, Widget parent) itemBuilder;
  final Element Function(Widget parent)? headerBuilder;
  final Element Function(Widget parent)? footerBuilder;
  int initialItemCount;

  late final StreamSubscription? _onUpdateAllSub;
  late final StreamSubscription? _onUpdateSub;
  late final StreamSubscription? _onInsertSub;
  late final StreamSubscription? _onDeleteSub;
  late final StreamSubscription? _onScrollSub;

  final UListElement _uListElement = UListElement();

  ListView(
      {required this.itemBuilder,
      required this.initialItemCount,
      this.headerBuilder,
      this.footerBuilder,
      ListViewController? controller,
      this.itemDefaultHeight = 100,
      this.buffer = 0})
      : _controller = controller,
        assert(itemDefaultHeight > 0),
        assert(buffer >= 0) {
    // attach the list to the controller
    _controller?._attachView(this);
    _onUpdateAllSub =
        _controller?._updateAll.stream.listen(_onUpdateAllListener);
    _onUpdateSub = _controller?._update.stream.listen(_onUpdateListener);
    _onInsertSub = _controller?._insert.stream.listen(_onInsertListener);
    _onDeleteSub = _controller?._delete.stream.listen(_onDeleteListener);
  }

  List<bool> rebuildNeeded = [];

  int top = 0;
  int clientHeight = 0;

  List<int> offsetsTop = [];
  List<int> offsetsHeight = [];

  /// UI rendering is expensive, to avoid forced reflow issues, we
  /// get the item height before rendering
  void updateViewPortDimension() {
    top = rootListView!.scrollTop;
    clientHeight = rootListView!.clientHeight;

    if (offsetsTop.isNotEmpty &&
        _uListElement.children[1].getAttribute("data-widget-type") ==
            "EventWidget") {
      for (int i = 0; i < offsetsTop.length; i++) {
        print(
            "Top ${offsetsTop[i]} ${_uListElement.children[i].offsetTop} ${_uListElement.children[i].offsetTop - offsetsTop[i]}");
      }
    }

    offsetsTop = List.generate(_uListElement.children.length,
        (index) => _uListElement.children[index].offsetTop);
    offsetsHeight = List.generate(_uListElement.children.length,
        (index) => _uListElement.children[index].offsetHeight);
  }

  // Buffer to load elements further than what is displayed on the screen
  final int buffer;
  bool onScreen(i) {
    if (rootListView == null) return false;

    final index = headerBuilder != null ? i + 1 : 1;

    // We calculate the distance to the max and min boundaries of the viewport
    // from the opposite point for the element.
    var delta = top - offsetsTop[index];
    final deltaEnd = delta + clientHeight;

    delta = delta - offsetsHeight[index];
    if (delta <= buffer && deltaEnd >= -buffer) {
      return true;
    }
    return false;
  }

  void markAndRenderIfNeeded(int i) {
    if (onScreen(i)) {
      render(i);
      rebuildNeeded[i] = false;
    } else {
      print("List: not render $i");
      rebuildNeeded[i] = true;
    }
  }

  void insert(i) {}

  void rebuildIfNeeded(int i) {
    if (rebuildNeeded[i] && onScreen(i)) {
      render(i);
      rebuildNeeded[i] = false;
    }
  }

  void _onScrollListener(_) {
    if (!mounted) {
      _onScrollSub?.cancel();
      return;
    }

    for (int i = 0; i < rebuildNeeded.length; i++) {
      rebuildIfNeeded(i);
    }
  }

  Element? rootListView;

  Element? getRootView() {
    if (rootListView != null) return null;
    rootListView = appNode.querySelector("#" + _uListElement.id);
    _onScrollSub = rootListView?.onScroll.listen(_onScrollListener);
    return rootListView;
  }

  void render(int i) {
    final index = headerBuilder != null ? i + 1 : 1;
    _uListElement.children[index] = itemBuilder(i, this);

    final newHeight = _uListElement.children[index].offsetHeight;
    final delta = offsetsHeight[i] - newHeight;
    offsetsHeight[i] = newHeight;

    for (var pos = i + 1; pos < offsetsHeight.length; pos++) {
      offsetsTop[pos] += delta;
    }
  }

  void _onUpdateAllListener(int i) {
    if (!mounted) {
      _onUpdateAllSub?.cancel();
      return;
    }
    initView();
    updateViewPortDimension();

    if (rebuildNeeded.length != i) {
      rebuildNeeded = List.filled(i, true);
    }

    if (i != initialItemCount) {
      initialItemCount = i;

      // fill view
      rebuildNeeded = List.filled(initialItemCount, true, growable: true);
      _uListElement.children =
          List.filled(i, divElement()..style.height = '${itemDefaultHeight}px');
    }

    for (int pos = 0; pos < i; pos++) {
      markAndRenderIfNeeded(pos);
    }
    updateViewPortDimension();
  }

  void _onUpdateListener(int i) {
    if (!mounted) {
      _onUpdateSub?.cancel();
      return;
    }

    initView();
    updateViewPortDimension(); // TODO: remove me
    markAndRenderIfNeeded(i);
  }

  void _onInsertListener(int i) {
    if (!mounted) {
      _onInsertSub?.cancel();
      return;
    }
    initView();

    initialItemCount++;
    final index = headerBuilder != null ? i + 1 : 1;
    if (_uListElement.children.length < index) {
      _uListElement.children.insert(index, itemBuilder(i, this));
    } else {
      _uListElement.children.add(itemBuilder(i, this));
    }

    if (rebuildNeeded.length < i) {
      rebuildNeeded.insert(i, false);
      // we just did a rebuild
    } else {
      rebuildNeeded.add(false);
    }
  }

  void _onDeleteListener(int i) {
    if (!mounted) {
      _onDeleteSub?.cancel();
      return;
    }
    initialItemCount--;
    final index = headerBuilder != null ? i + 1 : 1;
    _uListElement.children.removeAt(index);
    rebuildNeeded.removeAt(index);

    // handle the fact that we may need to rebuild the later element
  }

  bool _inited = false;
  void initView() {
    if (!_inited) {
      _inited = true;
      getRootView();
      _onUpdateAllListener(initialItemCount);
    }
  }

  @override
  Element build() {
    final headerBuilder = this.headerBuilder;
    final footerBuilder = this.footerBuilder;

    final element = _uListElement
      ..children = [
        if (headerBuilder != null) headerBuilder(this),
        for (var i = 0; i < initialItemCount; i++)
          divElement()..style.height = '${itemDefaultHeight}px',
        if (footerBuilder != null) footerBuilder(this),
      ];
    _inited = false;
    rebuildNeeded = List.filled(initialItemCount, true, growable: true);
    return element;
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
