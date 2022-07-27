import 'dart:async';
import 'dart:html';

import 'package:wupper/wupper.dart';

/// Very simple ListView with the ability to control the updates on insert,
/// update or remove items without rerendering everything by using a
/// `ListViewController`.
/// Set an [itemBuilder] and an [initialItemCount] to render the list.
/// Set [reverse] to true, to flip the direction of the items.
class FixedHeightListView extends StatefulWidget {
  const FixedHeightListView(
      {Key? key,
      required this.itemBuilder,
      required this.initialItemCount,
      this.controller,
      required this.itemDefaultHeight,
      this.buffer = 0,
      this.id,
      this.className,
      this.postCreation,
      this.classes})
      : assert(itemDefaultHeight > 0),
        assert(buffer >= 0),
        super(key: key);

  final FixedHeightListViewController? controller;
  final int itemDefaultHeight;
  final int initialItemCount;
  final int buffer;
  final Widget Function(BuildContext context, int i) itemBuilder;

  final String? id;
  final String? className;
  final Set<String>? classes;
  final void Function(Element)? postCreation;

  @override
  StateWidget<StatefulWidget> createState() => _FixedHeightListView();
}

class _FixedHeightListView extends StateWidget<FixedHeightListView> {
  late final StreamSubscription? _onUpdateAllSub;
  late final StreamSubscription? _onUpdateSub;
  late final StreamSubscription? _onDeleteSub;

  StreamSubscription? _onScrollSub;
  StreamSubscription? _onResizeSub;

  @override
  void initState() {
    itemCount = widget.initialItemCount;

    _onUpdateAllSub =
        widget.controller?._updateAll.stream.listen(_onUpdateAllListener);
    _onUpdateSub = widget.controller?._update.stream.listen(_onUpdateListener);
    _onDeleteSub = widget.controller?._delete.stream.listen(_onDeleteListener);
    super.initState();
  }

  int itemCount = 0;

  final Element _uListElement = UListElement();
  List<Element> get domChildren => _uListElement.children;

  Timer? _unloadIfNotOnScreenTimer;
  List<bool> rebuildNeeded = [];

  int firstItemOnScreen = 0;
  int lastItemOnScreen = 0;

  int offsetTop = 0;
  int? _offsetBottom;
  int get offsetBottom {
    if (_offsetBottom != null) return _offsetBottom!;

    var delta = 0;
    for (int i = 0; i < domChildren.length; i++) {
      delta += domChildren[i].offsetHeight;
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
    _uListElement.setAttribute("style",
        "padding: ${offsetTop}px 0px ${end}px; margin-block-start: 0px;");
  }

  Element? getUIElement(int i) {
    final pos = i - firstItemOnScreen;
    if (pos >= 0 && pos < domChildren.length) {
      return domChildren[pos];
    }
    return null;
  }

  bool onScreen(i) {
    if (rootListView == null) return false;

    final element = getUIElement(i);

    if (element == null) {
      final pos = i - firstItemOnScreen;
      if (pos < 0 && scrollPositionToTop - widget.buffer < offsetTop) {
        return true;
      }
      if (scrollPositionToTop + clientHeight + widget.buffer > offsetBottom &&
          pos >= domChildren.length) {
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
        Timer(const Duration(milliseconds: 1000), _unloadIfNotOnScreen);
  }

  void _unloadIfNotOnScreen() {
    var pos = 0;
    while (pos < domChildren.length) {
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
    // We need to check if the widget parent did change. If yes, we need to update the onScroll hook
    // RootListView (DivElement) -> UListElement
    if (rootListView == _uListElement.parent) {
      return rootListView;
    }

    rootListView = _uListElement.parent;

    // set old scroll pos if we just refreshed the Widget
    rootListView?.scrollTop = scrollPositionToTop;

    // hook the scroll listener
    _onScrollSub = rootListView?.onScroll.listen(_onScrollListener);
    _onResizeSub ??= window.onResize.listen(_onScrollListener);

    // init position and scroll length
    setPos();
    return rootListView;
  }

  void renderItem(int i, {bool start = false, bool end = false}) {
    final pos = i - firstItemOnScreen;

    final child = widget.itemBuilder(context, i);

    final childContext =
        context.createChildContext(setChild: false, copyOldProperties: false);
    child.inflate(childContext);

    final newElement = childContext.element!;

    newElement.style.height = "${widget.itemDefaultHeight} px";
    if (start) {
      domChildren.insert(0, newElement);
      offsetTop -= widget.itemDefaultHeight;
      firstItemOnScreen--;
      setPos();
    } else if (end) {
      domChildren.add(newElement);
      _offsetBottom = offsetBottom + widget.itemDefaultHeight;
      lastItemOnScreen++;
      setPos();
    } else {
      domChildren[pos] = newElement;
    }

    rebuildNeeded[i] = false;
  }

  void runRender() {
    var start = firstItemOnScreen - 1;
    // render items before the actual section of items
    while (start >= 0 && getUIElement(start) == null && onScreen(start)) {
      renderItem(start, start: true);
      start--;
    }

    // for the element actually displayed, refresh them only if needed
    // (refresh asked and onScreen) or if there haven’t been rendered.
    for (var pos = firstItemOnScreen; pos < lastItemOnScreen; pos++) {
      if ((rebuildNeeded[pos] || getUIElement(pos) == null) && onScreen(pos)) {
        renderItem(pos);
      }
    }

    // render items after
    var end = lastItemOnScreen;
    while (end < itemCount && getUIElement(end) == null && onScreen(end)) {
      renderItem(end, end: true);
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
    domChildren.clear();
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
    if (element != null) domChildren.remove(element);
    rebuildNeeded.removeAt(i);
  }

  void initView(BuildContext context) {
    getRootView(context);
  }

  @override
  Widget build(context) {
    context.addPostFrameCallback(() {
      _onUpdateAllListener(itemCount);
    });

    return DivElementWidget(
        id: widget.id,
        classes: widget.classes,
        className: widget.className,
        children: [
          WrapperWidget(_uListElement),
        ],
        postCreation: widget.postCreation);
  }
}

/// Controller for the ListView. If you want to rerender the whole list at
/// once, just call `updateAll(itemCount)`. To only render the things that have
/// changed, use:
/// - `update(index)`
/// - `insert(index)`
/// - `delete(index)`
class FixedHeightListViewController {
  final StreamController<int> _updateAll = StreamController<int>.broadcast();
  final StreamController<int> _update = StreamController<int>.broadcast();
  final StreamController<int> _delete = StreamController<int>.broadcast();

  /// re-renders the entire list with the given new [itemCount]
  void updateAll(int itemCount) => _updateAll.add(itemCount);

  /// updates the item at offset [index]
  void update(int index) => _update.add(index);

  /// deletes the item at offset [index]
  void delete(int index) => _delete.add(index);

  /// returns every [Element] which is currently present in the attached view
  //List<Element> get items => _view?.domChildren ?? [];
}
