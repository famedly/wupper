import 'dart:async';
import 'dart:html';

import 'package:wupper/wupper.dart';

/// Very simple ListView with the ability to control the updates on insert,
/// update or remove items without rerendering everything by using a
/// `ListViewController`.
/// Set an [itemBuilder] and an [initialItemCount] to render the list.
/// Set [reverse] to true, to flip the direction of the items.
class FixedHeightListView extends StatefulWidget {
  FixedHeightListView(
      {required this.itemBuilder,
      required this.initialItemCount,
      this.controller,
      this.itemDefaultHeight = 100,
      this.buffer = 0})
      : assert(itemDefaultHeight > 0),
        assert(buffer >= 0);

  final FixedHeightListViewController? controller;
  final int itemDefaultHeight;
  final int initialItemCount;
  final int buffer;
  final Element Function(BuildContext context, int i) itemBuilder;

  @override
  StateWidget<StatefulWidget> createState() => _FixedHeightListView();
}

class _FixedHeightListView extends StateWidget<FixedHeightListView> {
  late final StreamSubscription? _onUpdateAllSub;
  late final StreamSubscription? _onUpdateSub;
  late final StreamSubscription? _onDeleteSub;

  late final StreamSubscription? _onScrollSub;
  late final StreamSubscription? _onResizeSub;

  @override
  void initState() {
    itemCount = widget.initialItemCount;

    // attach the list to the controller
    widget.controller?._attachView(widget);
    _onUpdateAllSub =
        widget.controller?._updateAll.stream.listen(_onUpdateAllListener);
    _onUpdateSub = widget.controller?._update.stream.listen(_onUpdateListener);
    _onDeleteSub = widget.controller?._delete.stream.listen(_onDeleteListener);
    super.initState();
  }

  int itemCount = 0;
  final _uListElement = UListElement();

  Timer? _unloadIfNotOnScreenTimer;
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
    final end = (itemCount - lastItemOnScreen) * widget.itemDefaultHeight;
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
    var delta = scrollPositionToTop - i * widget.itemDefaultHeight;
    final deltaEnd = delta + clientHeight;

    delta = delta - widget.itemDefaultHeight;

    if (delta <= widget.buffer && deltaEnd >= -widget.buffer) {
      return true;
    }

    return false;
  }

  void cancelUnloadIfNotOnScreen() {
    _unloadIfNotOnScreenTimer?.cancel();
  }

  void unloadIfNotOnScreen() {
    // unload screen if needed
    _unloadIfNotOnScreenTimer =
        Timer(Duration(milliseconds: 1000), _unloadIfNotOnScreen);
  }

  void _unloadIfNotOnScreen() {
    var pos = 0;
    while (pos < _uListElement.children.length) {
      final i = pos + firstItemOnScreen;
      final element = getUIElement(i);

      if (element != null && !onScreen(i)) {
        _uListElement.children.removeAt(pos);
        if (i == firstItemOnScreen) {
          offsetTop += widget.itemDefaultHeight;
          firstItemOnScreen++;
        } else {
          _offsetBottom = offsetBottom - widget.itemDefaultHeight;
          lastItemOnScreen--;
        }
        setPos();
      } else {
        pos++;
      }
    }
    setPos();
  }

  void _onScrollListener(_) {
    if (!mounted) {
      _onScrollSub?.cancel();
      _onResizeSub?.cancel();
      return;
    }
    scrollHandler();
  }

  void scrollHandler() {
    cancelUnloadIfNotOnScreen();
    updateViewPortDimension();
    runRender();
    unloadIfNotOnScreen();
  }

  Element? rootListView;

  Element? getRootView(BuildContext context) {
    if (rootListView != null) return rootListView;
    rootListView = appNode.querySelector("#" + context.element!.id);
    _onScrollSub = rootListView?.onScroll.listen(_onScrollListener);
    _onResizeSub = window.onResize.listen(_onScrollListener);
    return rootListView;
  }

  void renderItem(int i, {bool start = false, bool end = false}) {
    final pos = i - firstItemOnScreen;

    final newElement = widget.itemBuilder(context, i);

    newElement.style.height = "${widget.itemDefaultHeight} px";
    if (start) {
      _uListElement.children.insert(0, newElement);
      offsetTop -= widget.itemDefaultHeight;
      firstItemOnScreen--;
      setPos();
    } else if (end) {
      _uListElement.children.add(newElement);
      _offsetBottom = offsetBottom + widget.itemDefaultHeight;
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
      renderItem(start, start: true);
      rebuildNeeded[start] = false;
      start--;
    }

    for (var pos = 0; pos < _uListElement.children.length; pos++) {
      final i = pos + firstItemOnScreen;
      if ((rebuildNeeded[i] || getUIElement(i) == null) && onScreen(i)) {
        renderItem(i);

        rebuildNeeded[i] = false;
      }
    }

    var end = lastItemOnScreen;
    while (end < itemCount && getUIElement(end) == null && onScreen(end)) {
      renderItem(end, end: true);
      rebuildNeeded[end] = false;
      end++;
    }
  }

  void _onUpdateAllListener(int i) {
    cancelUnloadIfNotOnScreen();

    if (!mounted) {
      _onUpdateAllSub?.cancel();
      return;
    }

    initView(context);

    if (itemCount != i) {
      // we need to reset the view as the number of elements did change
      clearView();

      itemCount = i;
    }

    rebuildNeeded = List.filled(i, true, growable: true);

    updateViewPortDimension();
    runRender();
    unloadIfNotOnScreen();
  }

  void _onUpdateListener(int i) {
    cancelUnloadIfNotOnScreen();

    if (!mounted) {
      _onUpdateSub?.cancel();
      return;
    }

    if (i >= 0 && i < rebuildNeeded.length) {
      rebuildNeeded[i] = true;
    }

    initView(context);
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
    itemCount--;
    final element = getUIElement(i);
    if (element != null) _uListElement.children.remove(element);
    rebuildNeeded.removeAt(i);
  }

  bool _inited = false;
  void initView(BuildContext context) {
    if (!_inited) {
      _inited = true;
      getRootView(context);
    }
  }

  late DivElementWidget div;

  @override
  Widget build(context) {
    _inited = false;
    rebuildNeeded = List.filled(itemCount, true, growable: true);
    _uListElement.id = "child_$hashCode";
    div = DivElementWidget(children: []);
    context.addPostFrameCallback(() {
      _onUpdateAllListener(itemCount);
    });
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
  //List<Element> get items => _view?._uListElement.children ?? [];
}
