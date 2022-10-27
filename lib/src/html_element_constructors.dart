import 'dart:html';

import 'package:wupper/wupper.dart';

class ElementWidget extends Widget {
  final Map<String, String>? attributes;
  final List<Widget>? children;
  final Iterable<String>? classes;
  final Map<String, String>? dataset;
  final String? innerHtml;
  final String? innerText;
  final int? scrollLeft;
  final int? scrollTop;
  final String? contentEditable;
  final String? dir;
  final bool? draggable;
  final bool? hidden;
  final bool? inert;
  final String? inputMode;
  final String? lang;
  final bool? spellcheck;
  final int? tabIndex;
  final String? title;
  final bool? translate;
  final String? className;
  final String? id;
  final String? slot;
  final Iterable<Node>? nodes;
  final String? text;

  final void Function(Event)? onAbort;
  final void Function(Event)? onBeforeCopy;
  final void Function(Event)? onBeforeCut;
  final void Function(Event)? onBeforePaste;
  final void Function(Event)? onBlur;
  final void Function(Event)? onCanPlay;
  final void Function(Event)? onCanPlayThrough;
  final void Function(Event)? onChange;
  final void Function(MouseEvent)? onClick;
  final void Function(MouseEvent)? onContextMenu;
  final void Function(ClipboardEvent)? onCopy;
  final void Function(ClipboardEvent)? onCut;
  final void Function(Event)? onDoubleClick;
  final void Function(MouseEvent)? onDrag;
  final void Function(MouseEvent)? onDragEnd;
  final void Function(MouseEvent)? onDragEnter;
  final void Function(MouseEvent)? onDragLeave;
  final void Function(MouseEvent)? onDragOver;
  final void Function(MouseEvent)? onDragStart;
  final void Function(MouseEvent)? onDrop;
  final void Function(Event)? onDurationChange;
  final void Function(Event)? onEmptied;
  final void Function(Event)? onEnded;
  final void Function(Event)? onError;
  final void Function(Event)? onFocus;
  final void Function(Event)? onInput;
  final void Function(Event)? onInvalid;
  final void Function(KeyboardEvent)? onKeyDown;
  final void Function(KeyboardEvent)? onKeyPress;
  final void Function(KeyboardEvent)? onKeyUp;
  final void Function(Event)? onLoad;
  final void Function(Event)? onLoadedData;
  final void Function(Event)? onLoadedMetadata;
  final void Function(MouseEvent)? onMouseDown;
  final void Function(MouseEvent)? onMouseEnter;
  final void Function(MouseEvent)? onMouseLeave;
  final void Function(MouseEvent)? onMouseMove;
  final void Function(MouseEvent)? onMouseOut;
  final void Function(MouseEvent)? onMouseOver;
  final void Function(MouseEvent)? onMouseUp;
  final void Function(WheelEvent)? onMouseWheel;
  final void Function(ClipboardEvent)? onPaste;
  final void Function(Event)? onPause;
  final void Function(Event)? onPlay;
  final void Function(Event)? onPlaying;
  final void Function(Event)? onRateChange;
  final void Function(Event)? onReset;
  final void Function(Event)? onResize;
  final void Function(Event)? onScroll;
  final void Function(Event)? onSearch;
  final void Function(Event)? onSeeked;
  final void Function(Event)? onSeeking;
  final void Function(Event)? onSelect;
  final void Function(Event)? onSelectStart;
  final void Function(Event)? onStalled;
  final void Function(Event)? onSubmit;
  final void Function(Event)? onSuspend;
  final void Function(Event)? onTimeUpdate;
  final void Function(TouchEvent)? onTouchCancel;
  final void Function(TouchEvent)? onTouchEnd;
  final void Function(TouchEvent)? onTouchEnter;
  final void Function(TouchEvent)? onTouchLeave;
  final void Function(TouchEvent)? onTouchMove;
  final void Function(TouchEvent)? onTouchStart;
  final void Function(TransitionEvent)? onTransitionEnd;
  final void Function(Event)? onVolumeChange;
  final void Function(Event)? onWaiting;
  final void Function(Event)? onFullscreenChange;
  final void Function(Event)? onFullscreenError;
  final void Function(WheelEvent)? onWheel;

  final void Function(Element e)? postCreation;

  ElementWidget(
      {Key? key,
      this.attributes,
      this.children,
      this.classes,
      this.dataset,
      this.innerHtml,
      this.innerText,
      this.scrollLeft,
      this.scrollTop,
      this.contentEditable,
      this.dir,
      this.draggable,
      this.hidden,
      this.inert,
      this.inputMode,
      this.lang,
      this.spellcheck,
      this.tabIndex,
      this.title,
      this.translate,
      this.className,
      this.id,
      this.slot,
      this.nodes,
      this.text,
      this.onAbort,
      this.onBeforeCopy,
      this.onBeforeCut,
      this.onBeforePaste,
      this.onBlur,
      this.onCanPlay,
      this.onCanPlayThrough,
      this.onChange,
      this.onClick,
      this.onContextMenu,
      this.onCopy,
      this.onCut,
      this.onDoubleClick,
      this.onDrag,
      this.onDragEnd,
      this.onDragEnter,
      this.onDragLeave,
      this.onDragOver,
      this.onDragStart,
      this.onDrop,
      this.onDurationChange,
      this.onEmptied,
      this.onEnded,
      this.onError,
      this.onFocus,
      this.onInput,
      this.onInvalid,
      this.onKeyDown,
      this.onKeyPress,
      this.onKeyUp,
      this.onLoad,
      this.onLoadedData,
      this.onLoadedMetadata,
      this.onMouseDown,
      this.onMouseEnter,
      this.onMouseLeave,
      this.onMouseMove,
      this.onMouseOut,
      this.onMouseOver,
      this.onMouseUp,
      this.onMouseWheel,
      this.onPaste,
      this.onPause,
      this.onPlay,
      this.onPlaying,
      this.onRateChange,
      this.onReset,
      this.onResize,
      this.onScroll,
      this.onSearch,
      this.onSeeked,
      this.onSeeking,
      this.onSelect,
      this.onSelectStart,
      this.onStalled,
      this.onSubmit,
      this.onSuspend,
      this.onTimeUpdate,
      this.onTouchCancel,
      this.onTouchEnd,
      this.onTouchEnter,
      this.onTouchLeave,
      this.onTouchMove,
      this.onTouchStart,
      this.onTransitionEnd,
      this.onVolumeChange,
      this.onWaiting,
      this.onFullscreenChange,
      this.onFullscreenError,
      this.onWheel,
      this.postCreation})
      : super(key: key);

  Element hook(BuildContext context, Element v) {
    // Set the element object in context
    context.setElement(v);

    if (attributes != null) v.attributes = attributes!;
    if (classes != null) v.classes = classes!;
    if (dataset != null) v.dataset = dataset!;
    if (innerHtml != null) v.innerHtml = innerHtml;
    if (innerText != null) v.innerText = innerText!;
    if (scrollLeft != null) v.scrollLeft = scrollLeft!;
    if (scrollTop != null) v.scrollTop = scrollTop!;
    if (contentEditable != null) v.contentEditable = contentEditable!;
    if (dir != null) v.dir = dir;
    if (draggable != null) v.draggable = draggable!;
    if (hidden != null) v.hidden = hidden!;
    if (inert != null) v.inert = inert;
    if (inputMode != null) v.inputMode = inputMode;
    if (lang != null) v.lang = lang;
    if (spellcheck != null) v.spellcheck = spellcheck;
    if (tabIndex != null) v.tabIndex = tabIndex;
    if (title != null) v.title = title;
    if (translate != null) v.translate = translate;
    if (className != null) v.className = className!;
    if (id != null) v.id = id!;
    if (slot != null) v.slot = slot;
    if (nodes != null) v.nodes = nodes!;
    if (text != null) v.text = text;
    if (onAbort != null) v.onAbort.listen(onAbort);
    if (onBeforeCopy != null) v.onBeforeCopy.listen(onBeforeCopy);
    if (onBeforeCut != null) v.onBeforeCut.listen(onBeforeCut);
    if (onBeforePaste != null) v.onBeforePaste.listen(onBeforePaste);
    if (onBlur != null) v.onBlur.listen(onBlur);
    if (onCanPlay != null) v.onCanPlay.listen(onCanPlay);
    if (onCanPlayThrough != null) v.onCanPlayThrough.listen(onCanPlayThrough);
    if (onChange != null) v.onChange.listen(onChange);
    if (onClick != null) v.onClick.listen(onClick);
    if (onContextMenu != null) v.onContextMenu.listen(onContextMenu);
    if (onCopy != null) v.onCopy.listen(onCopy);
    if (onCut != null) v.onCut.listen(onCut);
    if (onDoubleClick != null) v.onDoubleClick.listen(onDoubleClick);
    if (onDrag != null) v.onDrag.listen(onDrag);
    if (onDragEnd != null) v.onDragEnd.listen(onDragEnd);
    if (onDragEnter != null) v.onDragEnter.listen(onDragEnter);
    if (onDragLeave != null) v.onDragLeave.listen(onDragLeave);
    if (onDragOver != null) v.onDragOver.listen(onDragOver);
    if (onDragStart != null) v.onDragStart.listen(onDragStart);
    if (onDrop != null) v.onDrop.listen(onDrop);
    if (onDurationChange != null) v.onDurationChange.listen(onDurationChange);
    if (onEmptied != null) v.onEmptied.listen(onEmptied);
    if (onEnded != null) v.onEnded.listen(onEnded);
    if (onError != null) v.onError.listen(onError);
    if (onFocus != null) v.onFocus.listen(onFocus);
    if (onInput != null) v.onInput.listen(onInput);
    if (onInvalid != null) v.onInvalid.listen(onInvalid);
    if (onKeyDown != null) v.onKeyDown.listen(onKeyDown);
    if (onKeyPress != null) v.onKeyPress.listen(onKeyPress);
    if (onKeyUp != null) v.onKeyUp.listen(onKeyUp);
    if (onLoad != null) v.onLoad.listen(onLoad);
    if (onLoadedData != null) v.onLoadedData.listen(onLoadedData);
    if (onLoadedMetadata != null) v.onLoadedMetadata.listen(onLoadedMetadata);
    if (onMouseDown != null) v.onMouseDown.listen(onMouseDown);
    if (onMouseEnter != null) v.onMouseEnter.listen(onMouseEnter);
    if (onMouseLeave != null) v.onMouseLeave.listen(onMouseLeave);
    if (onMouseMove != null) v.onMouseMove.listen(onMouseMove);
    if (onMouseOut != null) v.onMouseOut.listen(onMouseOut);
    if (onMouseOver != null) v.onMouseOver.listen(onMouseOver);
    if (onMouseUp != null) v.onMouseUp.listen(onMouseUp);
    if (onMouseWheel != null) v.onMouseWheel.listen(onMouseWheel);
    if (onPaste != null) v.onPaste.listen(onPaste);
    if (onPause != null) v.onPause.listen(onPause);
    if (onPlay != null) v.onPlay.listen(onPlay);
    if (onPlaying != null) v.onPlaying.listen(onPlaying);
    if (onRateChange != null) v.onRateChange.listen(onRateChange);
    if (onReset != null) v.onReset.listen(onReset);
    if (onResize != null) v.onResize.listen(onResize);
    if (onScroll != null) v.onScroll.listen(onScroll);
    if (onSearch != null) v.onSearch.listen(onSearch);
    if (onSeeked != null) v.onSeeked.listen(onSeeked);
    if (onSeeking != null) v.onSeeking.listen(onSeeking);
    if (onSelect != null) v.onSelect.listen(onSelect);
    if (onSelectStart != null) v.onSelectStart.listen(onSelectStart);
    if (onStalled != null) v.onStalled.listen(onStalled);
    if (onSubmit != null) v.onSubmit.listen(onSubmit);
    if (onSuspend != null) v.onSuspend.listen(onSuspend);
    if (onTimeUpdate != null) v.onTimeUpdate.listen(onTimeUpdate);
    if (onTouchCancel != null) v.onTouchCancel.listen(onTouchCancel);
    if (onTouchEnd != null) v.onTouchEnd.listen(onTouchEnd);
    if (onTouchEnter != null) v.onTouchEnter.listen(onTouchEnter);
    if (onTouchLeave != null) v.onTouchLeave.listen(onTouchLeave);
    if (onTouchMove != null) v.onTouchMove.listen(onTouchMove);
    if (onTouchStart != null) v.onTouchStart.listen(onTouchStart);
    if (onTransitionEnd != null) v.onTransitionEnd.listen(onTransitionEnd);
    if (onVolumeChange != null) v.onVolumeChange.listen(onVolumeChange);
    if (onWaiting != null) v.onWaiting.listen(onWaiting);
    if (onFullscreenChange != null) {
      v.onFullscreenChange.listen(onFullscreenChange);
    }
    if (onFullscreenError != null) {
      v.onFullscreenError.listen(onFullscreenError);
    }
    if (onWheel != null) v.onWheel.listen(onWheel);

    if (children != null) {
      v.children = context.domChildren!.map((e) => e.getElement()!).toList();
    }

    postCreation?.call(v);

    return v;
  }

  @override
  Element render(BuildContext context) => hook(context, HtmlElement());

  List<Widget>? oldChildren;

  @override
  void inflate(BuildContext context) {
    context.widget = this;

    final oldDomElements = context.domChildren ?? [];
    context.domChildren = [];
    final wasChildUsed = List.filled(oldDomElements.length, false);

    // context propagation to children
    if (children != null) {
      for (var i = 0; i < children!.length; i++) {
        final child = children![i];

        /// Try to find if we already have this widget in the dom
        var sameHashCodePos = -1;
        var sameRunTypePos = -1;

        for (var i = 0; i < oldDomElements.length; i++) {
          final context = oldDomElements[i];

          if (context.widget.hashCode == child.hashCode &&
              context.widget?.key == child.key &&
              !wasChildUsed[i]) {
            sameHashCodePos = i;
            break;
          }

          if (context.widget.runtimeType == child.runtimeType &&
              context.widget?.key == child.key &&
              !wasChildUsed[i] &&
              sameRunTypePos == -1) {
            sameRunTypePos = i;
          }
        }

        /// Was the element already created ?
        if (sameHashCodePos != -1 &&
            oldDomElements[i].element?.isConnected == true) {
          context.domChildren!.add(oldDomElements[i]);
          oldDomElements[i].parent = context;

          assert(oldDomElements[i].element?.isConnected == true);
          wasChildUsed[sameHashCodePos] = true;
        } else {
          BuildContext? target;

          if (sameRunTypePos != -1) {
            wasChildUsed[sameRunTypePos] = true;
            target = oldDomElements[sameRunTypePos];
          }

          final childContext = context.createChildContext(
              copyOldProperties: target != null, target: target);

          context.domChildren!.add(childContext);
          child.inflate(childContext);
        }
      }
    }

    render(context);
  }
}
