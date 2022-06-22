import 'dart:async';
import 'dart:html';

import 'package:wupper/wupper.dart';

/// Very simple ListView with the ability to control the updates on insert,
/// update or remove items without rerendering everything by using a
/// `ListViewController`.
/// Set an [itemBuilder] and an [initialItemCount] to render the list.
/// Set [reverse] to true, to flip the direction of the items.
class FixedHeightListView extends Widget {
  final FixedHeightListViewController? _controller;
  final int itemDefaultHeight;
  final Element Function(int i, Widget parent) itemBuilder;

  late final StreamSubscription? _onUpdateAllSub;
  late final StreamSubscription? _onUpdateSub;
  late final StreamSubscription? _onDeleteSub;

  late final StreamSubscription? _onScrollSub;
  late final StreamSubscription? _onResizeSub;

  int initialItemCount;
  final _uListElement = UListElement();

  FixedHeightListView(
      {required this.itemBuilder,
      required this.initialItemCount,
      FixedHeightListViewController? controller,
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
    _onDeleteSub = _controller?._delete.stream.listen(_onDeleteListener);
  }

  List<bool> rebuildNeeded = [];

  int firstItemOnScreen = 0;
  int lastItemOnScreen = 0;

  int offsetTop = 0;
  int? _offsetBottom;
  int get offsetBottom {
    if (_offsetBottom != null) return _offsetBottom!;

    var delta = 0;
    for (int i = 0; i < _uListElement.children.length; i++) {
      delta += _uListElement.children[i].offsetHeight;
    }

    _offsetBottom = offsetTop + delta;
    return _offsetBottom!;
  }

  int scrollPositionToTop = 0;
  int clientHeight = 0;

  /// UI rendering is expensive, to avoid forced reflow issues, we
  /// get the item height before rendering
  void updateViewPortDimension() {
    scrollPositionToTop = rootListView!.scrollTop;
    clientHeight = rootListView!.clientHeight;
  }

  void setPos() {
    final end = (initialItemCount - lastItemOnScreen) * itemDefaultHeight;
    _uListElement.setAttribute(
        "style", "padding: ${offsetTop}px 0px ${end}px  ");
  }

  Element? getUIElement(int i) {
    final pos = i - firstItemOnScreen;
    if (pos >= 0 && pos < _uListElement.children.length) {
      return _uListElement.children[pos];
    }
    return null;
  }

  // Buffer to load elements further than what is displayed on the screen
  final int buffer;
  bool onScreen(i) {
    if (rootListView == null) return false;

    final element = getUIElement(i);

    if (element == null) {
      final pos = i - firstItemOnScreen;
      if (pos < 0 && scrollPositionToTop < offsetTop) {
        return true;
      }
      if (scrollPositionToTop + clientHeight > offsetBottom &&
          pos >= _uListElement.children.length) {
        return true;
      }
    }

    if (element == null) return false;

    // We calculate the distance to the max and min boundaries of the viewport
    // from the opposite point for the element.
    var delta = scrollPositionToTop - i * itemDefaultHeight;
    final deltaEnd = delta + clientHeight;

    delta = delta - itemDefaultHeight;

    if (delta <= buffer && deltaEnd >= -buffer) {
      return true;
    }

    return false;
  }

  void unloadIfNotOnScreen() {
    var pos = 0;
    while (pos < _uListElement.children.length) {
      final i = pos + firstItemOnScreen;
      final element = getUIElement(i);

      if (element != null && !onScreen(i)) {
        _uListElement.children.removeAt(pos);
        if (i == firstItemOnScreen) {
          offsetTop += itemDefaultHeight;
          firstItemOnScreen++;
        } else {
          _offsetBottom = offsetBottom - itemDefaultHeight;
          lastItemOnScreen--;
        }
        setPos();
      } else {
        pos++;
      }
    }
    setPos();
  }

  Timer? scrollCoolDown;
  bool isScrolling = false;

  void _onScrollListener(_) {
    if (!mounted) {
      _onScrollSub?.cancel();
      _onDeleteSub?.cancel();
      return;
    }
    scrollHandler();
  }

  void scrollHandler() {
    scrollCoolDown?.cancel();
    updateViewPortDimension();
    runRender();

    // unload screen if needed
    scrollCoolDown = Timer(Duration(milliseconds: 1000), unloadIfNotOnScreen);
  }

  Element? rootListView;

  Element? getRootView() {
    if (rootListView != null) return rootListView;
    rootListView = appNode.querySelector("#" + div.id);
    _onScrollSub = rootListView?.onScroll.listen(_onScrollListener);
    _onResizeSub = window.onResize.listen(_onScrollListener);
    return rootListView;
  }

  void render(int i, {bool start = false, bool end = false}) {
    final pos = i - firstItemOnScreen;

    final newElement = itemBuilder(i, this);

    newElement.style.height = "$itemDefaultHeight px";
    if (start) {
      _uListElement.children.insert(0, newElement);
      offsetTop -= itemDefaultHeight;
      firstItemOnScreen--;
      setPos();
    } else if (end) {
      _uListElement.children.add(newElement);
      _offsetBottom = offsetBottom + itemDefaultHeight;
      lastItemOnScreen++;
      setPos();
    } else {
      _uListElement.children[pos] = newElement;
    }

    rebuildNeeded[i] = false;
  }

  void runRender() {
    var start = firstItemOnScreen - 1;
    while (start >= 0 && getUIElement(start) == null && onScreen(start)) {
      render(start, start: true);
      rebuildNeeded[start] = false;
      start--;
    }

    for (var pos = 0; pos < _uListElement.children.length; pos++) {
      final i = pos + firstItemOnScreen;
      if ((rebuildNeeded[i] || getUIElement(i) == null) && onScreen(i)) {
        render(i);

        rebuildNeeded[i] = false;
      }
    }

    var end = lastItemOnScreen;
    while (
        end < initialItemCount && getUIElement(end) == null && onScreen(end)) {
      render(end, end: true);
      rebuildNeeded[end] = false;
      end++;
    }
  }

  void _onUpdateAllListener(int i) {
    if (!mounted) {
      _onUpdateAllSub?.cancel();
      return;
    }

    initView();

    if (initialItemCount != i) {
      // we need to reset the view
      clearView();
      initialItemCount = i;
    }

    rebuildNeeded = List.filled(i, true, growable: true);

    updateViewPortDimension();
    runRender();
    unloadIfNotOnScreen();
  }

  void _onUpdateListener(int i) {
    if (!mounted) {
      _onUpdateSub?.cancel();
      return;
    }

    if (i >= 0 && i < rebuildNeeded.length) {
      rebuildNeeded[i] = true;
    }

    initView();
    updateViewPortDimension();
    runRender();
    unloadIfNotOnScreen();
  }

  void clearView() {
    offsetTop = 0;
    _offsetBottom = 0;
    _uListElement.children.clear();
    firstItemOnScreen = 0;
    lastItemOnScreen = 0;
  }

  void _onDeleteListener(int i) {
    if (!mounted) {
      _onDeleteSub?.cancel();
      return;
    }
    initialItemCount--;
    final element = getUIElement(i);
    if (element != null) _uListElement.children.remove(element);
    rebuildNeeded.removeAt(i);
  }

  bool _inited = false;
  void initView() {
    if (!_inited) {
      _inited = true;
      getRootView();
    }
  }

  late DivElement div;

  @override
  Element build() {
    _inited = false;
    rebuildNeeded = List.filled(initialItemCount, true, growable: true);
    _uListElement.id = "child_$hashCode";
    div = divElement(children: [_uListElement]);
    return div;
  }
}

/// Controller for the ListView. If you want to rerender the whole list at
/// once, just call `updateAll(itemCount)`. To only render the things that have
/// changed, use:
/// - `update(index)`
/// - `insert(index)`
/// - `delete(index)`
class FixedHeightListViewController {
  FixedHeightListView? _view;
  final StreamController<int> _updateAll = StreamController<int>.broadcast();
  final StreamController<int> _update = StreamController<int>.broadcast();
  final StreamController<int> _delete = StreamController<int>.broadcast();

  /// connects the given [FixedHeightListView] with the controller in order to access its
  /// properties
  void _attachView(FixedHeightListView listView) => _view = listView;

  /// re-renders the entire list with the given new [itemCount]
  void updateAll(int itemCount) => _updateAll.add(itemCount);

  /// updates the item at offset [index]
  void update(int index) => _update.add(index);

  /// deletes the item at offset [index]
  void delete(int index) => _delete.add(index);

  /// returns every [Element] which is currently present in the attached view
  List<Element> get items => _view?._uListElement.children ?? [];
}
