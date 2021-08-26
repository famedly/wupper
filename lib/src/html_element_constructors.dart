// MIT License

// Copyright (c) 2021 Famedly

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import 'dart:html';

// ignore_for_file: curly_braces_in_flow_control_structures

HtmlElement htmlElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = HtmlElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

AnchorElement anchorElement(
    {String? download,
    String? hreflang,
    String? referrerPolicy,
    String? rel,
    String? target,
    String? type,
    String? hash,
    String? host,
    String? hostname,
    String? href,
    String? password,
    String? pathname,
    String? port,
    String? protocol,
    String? search,
    String? username,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = AnchorElement();
  if (download != null) v.download = download;
  if (hreflang != null) v.hreflang = hreflang;
  if (referrerPolicy != null) v.referrerPolicy = referrerPolicy;
  if (rel != null) v.rel = rel;
  if (target != null) v.target = target;
  if (type != null) v.type = type;
  if (hash != null) v.hash = hash;
  if (host != null) v.host = host;
  if (hostname != null) v.hostname = hostname;
  if (href != null) v.href = href;
  if (password != null) v.password = password;
  if (pathname != null) v.pathname = pathname;
  if (port != null) v.port = port;
  if (protocol != null) v.protocol = protocol;
  if (search != null) v.search = search;
  if (username != null) v.username = username;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

AreaElement areaElement(
    {String? alt,
    String? coords,
    String? download,
    String? referrerPolicy,
    String? rel,
    String? shape,
    String? target,
    String? hash,
    String? host,
    String? hostname,
    String? href,
    String? password,
    String? pathname,
    String? port,
    String? protocol,
    String? search,
    String? username,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = AreaElement();
  if (alt != null) v.alt = alt;
  if (coords != null) v.coords = coords;
  if (download != null) v.download = download;
  if (referrerPolicy != null) v.referrerPolicy = referrerPolicy;
  if (rel != null) v.rel = rel;
  if (shape != null) v.shape = shape;
  if (target != null) v.target = target;
  if (hash != null) v.hash = hash;
  if (host != null) v.host = host;
  if (hostname != null) v.hostname = hostname;
  if (href != null) v.href = href;
  if (password != null) v.password = password;
  if (pathname != null) v.pathname = pathname;
  if (port != null) v.port = port;
  if (protocol != null) v.protocol = protocol;
  if (search != null) v.search = search;
  if (username != null) v.username = username;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

AudioElement audioElement(
    {bool? autoplay,
    bool? controls,
    String? crossOrigin,
    num? currentTime,
    bool? defaultMuted,
    num? defaultPlaybackRate,
    bool? disableRemotePlayback,
    bool? loop,
    bool? muted,
    num? playbackRate,
    String? preload,
    String? src,
    MediaStream? srcObject,
    num? volume,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = AudioElement();
  if (autoplay != null) v.autoplay = autoplay;
  if (controls != null) v.controls = controls;
  if (crossOrigin != null) v.crossOrigin = crossOrigin;
  if (currentTime != null) v.currentTime = currentTime;
  if (defaultMuted != null) v.defaultMuted = defaultMuted;
  if (defaultPlaybackRate != null) v.defaultPlaybackRate = defaultPlaybackRate;
  if (disableRemotePlayback != null)
    v.disableRemotePlayback = disableRemotePlayback;
  if (loop != null) v.loop = loop;
  if (muted != null) v.muted = muted;
  if (playbackRate != null) v.playbackRate = playbackRate;
  if (preload != null) v.preload = preload;
  if (src != null) v.src = src;
  if (srcObject != null) v.srcObject = srcObject;
  if (volume != null) v.volume = volume;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

BRElement bRElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = BRElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

BaseElement baseElement(
    {String? href,
    String? target,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = BaseElement();
  if (href != null) v.href = href;
  if (target != null) v.target = target;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

BodyElement bodyElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onBlur,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onHashChange,
    void Function(Event)? onLoad,
    void Function(MessageEvent)? onMessage,
    void Function(Event)? onOffline,
    void Function(Event)? onOnline,
    void Function(PopStateEvent)? onPopState,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(StorageEvent)? onStorage,
    void Function(Event)? onUnload,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = BodyElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
  if (text != null) v.text = text;
  if (onBlur != null) v.onBlur.listen(onBlur);
  if (onError != null) v.onError.listen(onError);
  if (onFocus != null) v.onFocus.listen(onFocus);
  if (onHashChange != null) v.onHashChange.listen(onHashChange);
  if (onLoad != null) v.onLoad.listen(onLoad);
  if (onMessage != null) v.onMessage.listen(onMessage);
  if (onOffline != null) v.onOffline.listen(onOffline);
  if (onOnline != null) v.onOnline.listen(onOnline);
  if (onPopState != null) v.onPopState.listen(onPopState);
  if (onResize != null) v.onResize.listen(onResize);
  if (onScroll != null) v.onScroll.listen(onScroll);
  if (onStorage != null) v.onStorage.listen(onStorage);
  if (onUnload != null) v.onUnload.listen(onUnload);
  if (onAbort != null) v.onAbort.listen(onAbort);
  if (onBeforeCopy != null) v.onBeforeCopy.listen(onBeforeCopy);
  if (onBeforeCut != null) v.onBeforeCut.listen(onBeforeCut);
  if (onBeforePaste != null) v.onBeforePaste.listen(onBeforePaste);
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
  if (onInput != null) v.onInput.listen(onInput);
  if (onInvalid != null) v.onInvalid.listen(onInvalid);
  if (onKeyDown != null) v.onKeyDown.listen(onKeyDown);
  if (onKeyPress != null) v.onKeyPress.listen(onKeyPress);
  if (onKeyUp != null) v.onKeyUp.listen(onKeyUp);
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

ButtonElement buttonElement(
    {bool? autofocus,
    bool? disabled,
    String? formAction,
    String? formEnctype,
    String? formMethod,
    bool? formNoValidate,
    String? formTarget,
    String? name,
    String? type,
    String? value,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = ButtonElement();
  if (autofocus != null) v.autofocus = autofocus;
  if (disabled != null) v.disabled = disabled;
  if (formAction != null) v.formAction = formAction;
  if (formEnctype != null) v.formEnctype = formEnctype;
  if (formMethod != null) v.formMethod = formMethod;
  if (formNoValidate != null) v.formNoValidate = formNoValidate;
  if (formTarget != null) v.formTarget = formTarget;
  if (name != null) v.name = name;
  if (type != null) v.type = type;
  if (value != null) v.value = value;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

CanvasElement canvasElement(
    {int? height,
    int? width,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = CanvasElement();
  if (height != null) v.height = height;
  if (width != null) v.width = width;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

ContentElement contentElement(
    {String? select,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = ContentElement();
  if (select != null) v.select = select;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

DListElement dListElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = DListElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

DataListElement dataListElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = DataListElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

DetailsElement detailsElement(
    {bool? open,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = DetailsElement();
  if (open != null) v.open = open;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

DivElement divElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = DivElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

EmbedElement embedElement(
    {String? height,
    String? name,
    String? src,
    String? type,
    String? width,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = EmbedElement();
  if (height != null) v.height = height;
  if (name != null) v.name = name;
  if (src != null) v.src = src;
  if (type != null) v.type = type;
  if (width != null) v.width = width;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

FieldSetElement fieldSetElement(
    {bool? disabled,
    String? name,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = FieldSetElement();
  if (disabled != null) v.disabled = disabled;
  if (name != null) v.name = name;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

FormElement formElement(
    {String? acceptCharset,
    String? action,
    String? autocomplete,
    String? encoding,
    String? enctype,
    String? method,
    String? name,
    bool? noValidate,
    String? target,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = FormElement();
  if (acceptCharset != null) v.acceptCharset = acceptCharset;
  if (action != null) v.action = action;
  if (autocomplete != null) v.autocomplete = autocomplete;
  if (encoding != null) v.encoding = encoding;
  if (enctype != null) v.enctype = enctype;
  if (method != null) v.method = method;
  if (name != null) v.name = name;
  if (noValidate != null) v.noValidate = noValidate;
  if (target != null) v.target = target;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

HRElement hRElement(
    {String? color,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = HRElement();
  if (color != null) v.color = color;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

HeadElement headElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = HeadElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

HeadingElement headingElementH1(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = HeadingElement.h1();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

HeadingElement headingElementH2(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = HeadingElement.h2();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

HeadingElement headingElementH3(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = HeadingElement.h3();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

HeadingElement headingElementH4(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = HeadingElement.h4();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

HeadingElement headingElementH5(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = HeadingElement.h5();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

HeadingElement headingElementH6(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = HeadingElement.h6();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

HtmlHtmlElement htmlHtmlElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = HtmlHtmlElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

IFrameElement iFrameElement(
    {String? allow,
    bool? allowFullscreen,
    bool? allowPaymentRequest,
    String? csp,
    String? height,
    String? name,
    String? referrerPolicy,
    String? src,
    String? srcdoc,
    String? width,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = IFrameElement();
  if (allow != null) v.allow = allow;
  if (allowFullscreen != null) v.allowFullscreen = allowFullscreen;
  if (allowPaymentRequest != null) v.allowPaymentRequest = allowPaymentRequest;
  if (csp != null) v.csp = csp;
  if (height != null) v.height = height;
  if (name != null) v.name = name;
  if (referrerPolicy != null) v.referrerPolicy = referrerPolicy;
  if (src != null) v.src = src;
  if (srcdoc != null) v.srcdoc = srcdoc;
  if (width != null) v.width = width;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

ImageElement imageElement(
    {String? alt,
    String? async,
    String? crossOrigin,
    int? height,
    bool? isMap,
    String? referrerPolicy,
    String? sizes,
    String? src,
    String? srcset,
    String? useMap,
    int? width,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = ImageElement();
  if (alt != null) v.alt = alt;
  if (async != null) v.async = async;
  if (crossOrigin != null) v.crossOrigin = crossOrigin;
  if (height != null) v.height = height;
  if (isMap != null) v.isMap = isMap;
  if (referrerPolicy != null) v.referrerPolicy = referrerPolicy;
  if (sizes != null) v.sizes = sizes;
  if (src != null) v.src = src;
  if (srcset != null) v.srcset = srcset;
  if (useMap != null) v.useMap = useMap;
  if (width != null) v.width = width;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

InputElement inputElement(
    {String? accept,
    String? alt,
    String? autocapitalize,
    String? autocomplete,
    bool? autofocus,
    String? capture,
    bool? checked,
    bool? defaultChecked,
    String? defaultValue,
    String? dirName,
    bool? disabled,
    List<File>? files,
    String? formAction,
    String? formEnctype,
    String? formMethod,
    bool? formNoValidate,
    String? formTarget,
    int? height,
    bool? incremental,
    bool? indeterminate,
    String? max,
    int? maxLength,
    String? min,
    int? minLength,
    bool? multiple,
    String? name,
    String? pattern,
    String? placeholder,
    bool? readOnly,
    bool? required,
    String? selectionDirection,
    int? selectionEnd,
    int? selectionStart,
    int? size,
    String? src,
    String? step,
    String? type,
    String? value,
    DateTime? valueAsDate,
    num? valueAsNumber,
    bool? directory,
    int? width,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = InputElement();
  if (accept != null) v.accept = accept;
  if (alt != null) v.alt = alt;
  if (autocapitalize != null) v.autocapitalize = autocapitalize;
  if (autocomplete != null) v.autocomplete = autocomplete;
  if (autofocus != null) v.autofocus = autofocus;
  if (capture != null) v.capture = capture;
  if (checked != null) v.checked = checked;
  if (defaultChecked != null) v.defaultChecked = defaultChecked;
  if (defaultValue != null) v.defaultValue = defaultValue;
  if (dirName != null) v.dirName = dirName;
  if (disabled != null) v.disabled = disabled;
  if (files != null) v.files = files;
  if (formAction != null) v.formAction = formAction;
  if (formEnctype != null) v.formEnctype = formEnctype;
  if (formMethod != null) v.formMethod = formMethod;
  if (formNoValidate != null) v.formNoValidate = formNoValidate;
  if (formTarget != null) v.formTarget = formTarget;
  if (height != null) v.height = height;
  if (incremental != null) v.incremental = incremental;
  if (indeterminate != null) v.indeterminate = indeterminate;
  if (max != null) v.max = max;
  if (maxLength != null) v.maxLength = maxLength;
  if (min != null) v.min = min;
  if (minLength != null) v.minLength = minLength;
  if (multiple != null) v.multiple = multiple;
  if (name != null) v.name = name;
  if (pattern != null) v.pattern = pattern;
  if (placeholder != null) v.placeholder = placeholder;
  if (readOnly != null) v.readOnly = readOnly;
  if (required != null) v.required = required;
  if (selectionDirection != null) v.selectionDirection = selectionDirection;
  if (selectionEnd != null) v.selectionEnd = selectionEnd;
  if (selectionStart != null) v.selectionStart = selectionStart;
  if (size != null) v.size = size;
  if (src != null) v.src = src;
  if (step != null) v.step = step;
  if (type != null) v.type = type;
  if (value != null) v.value = value;
  if (valueAsDate != null) v.valueAsDate = valueAsDate;
  if (valueAsNumber != null) v.valueAsNumber = valueAsNumber;
  if (directory != null) v.directory = directory;
  if (width != null) v.width = width;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

LIElement lIElement(
    {int? value,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = LIElement();
  if (value != null) v.value = value;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

LabelElement labelElement(
    {String? htmlFor,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = LabelElement();
  if (htmlFor != null) v.htmlFor = htmlFor;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

LegendElement legendElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = LegendElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

LinkElement linkElement(
    {String? as,
    String? crossOrigin,
    bool? disabled,
    String? href,
    String? hreflang,
    String? integrity,
    String? media,
    String? referrerPolicy,
    String? rel,
    String? scope,
    String? type,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = LinkElement();
  if (as != null) v.as = as;
  if (crossOrigin != null) v.crossOrigin = crossOrigin;
  if (disabled != null) v.disabled = disabled;
  if (href != null) v.href = href;
  if (hreflang != null) v.hreflang = hreflang;
  if (integrity != null) v.integrity = integrity;
  if (media != null) v.media = media;
  if (referrerPolicy != null) v.referrerPolicy = referrerPolicy;
  if (rel != null) v.rel = rel;
  if (scope != null) v.scope = scope;
  if (type != null) v.type = type;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

MapElement mapElement(
    {String? name,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = MapElement();
  if (name != null) v.name = name;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

MenuElement menuElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = MenuElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

MetaElement metaElement(
    {String? content,
    String? httpEquiv,
    String? name,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = MetaElement();
  if (content != null) v.content = content;
  if (httpEquiv != null) v.httpEquiv = httpEquiv;
  if (name != null) v.name = name;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

MeterElement meterElement(
    {num? high,
    num? low,
    num? max,
    num? min,
    num? optimum,
    num? value,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = MeterElement();
  if (high != null) v.high = high;
  if (low != null) v.low = low;
  if (max != null) v.max = max;
  if (min != null) v.min = min;
  if (optimum != null) v.optimum = optimum;
  if (value != null) v.value = value;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

OListElement oListElement(
    {bool? reversed,
    int? start,
    String? type,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = OListElement();
  if (reversed != null) v.reversed = reversed;
  if (start != null) v.start = start;
  if (type != null) v.type = type;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

ObjectElement objectElement(
    {String? data,
    String? height,
    String? name,
    String? type,
    String? useMap,
    String? width,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = ObjectElement();
  if (data != null) v.data = data;
  if (height != null) v.height = height;
  if (name != null) v.name = name;
  if (type != null) v.type = type;
  if (useMap != null) v.useMap = useMap;
  if (width != null) v.width = width;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

OptGroupElement optGroupElement(
    {bool? disabled,
    String? label,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = OptGroupElement();
  if (disabled != null) v.disabled = disabled;
  if (label != null) v.label = label;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

OptionElement optionElement(
    {bool? defaultSelected,
    bool? disabled,
    String? label,
    bool? selected,
    String? value,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = OptionElement();
  if (defaultSelected != null) v.defaultSelected = defaultSelected;
  if (disabled != null) v.disabled = disabled;
  if (label != null) v.label = label;
  if (selected != null) v.selected = selected;
  if (value != null) v.value = value;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

OutputElement outputElement(
    {String? defaultValue,
    String? name,
    String? value,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = OutputElement();
  if (defaultValue != null) v.defaultValue = defaultValue;
  if (name != null) v.name = name;
  if (value != null) v.value = value;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

ParagraphElement paragraphElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = ParagraphElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

ParamElement paramElement(
    {String? name,
    String? value,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = ParamElement();
  if (name != null) v.name = name;
  if (value != null) v.value = value;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

PreElement preElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = PreElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

ProgressElement progressElement(
    {num? max,
    num? value,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = ProgressElement();
  if (max != null) v.max = max;
  if (value != null) v.value = value;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

QuoteElement quoteElement(
    {String? cite,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = QuoteElement();
  if (cite != null) v.cite = cite;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

ScriptElement scriptElement(
    {bool? async,
    String? charset,
    String? crossOrigin,
    bool? defer,
    String? integrity,
    bool? noModule,
    String? src,
    String? type,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = ScriptElement();
  if (async != null) v.async = async;
  if (charset != null) v.charset = charset;
  if (crossOrigin != null) v.crossOrigin = crossOrigin;
  if (defer != null) v.defer = defer;
  if (integrity != null) v.integrity = integrity;
  if (noModule != null) v.noModule = noModule;
  if (src != null) v.src = src;
  if (type != null) v.type = type;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

SelectElement selectElement(
    {bool? autofocus,
    bool? disabled,
    int? length,
    bool? multiple,
    String? name,
    bool? required,
    int? selectedIndex,
    int? size,
    String? value,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = SelectElement();
  if (autofocus != null) v.autofocus = autofocus;
  if (disabled != null) v.disabled = disabled;
  if (length != null) v.length = length;
  if (multiple != null) v.multiple = multiple;
  if (name != null) v.name = name;
  if (required != null) v.required = required;
  if (selectedIndex != null) v.selectedIndex = selectedIndex;
  if (size != null) v.size = size;
  if (value != null) v.value = value;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

ShadowElement shadowElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = ShadowElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

SourceElement sourceElement(
    {String? media,
    String? sizes,
    String? src,
    String? srcset,
    String? type,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = SourceElement();
  if (media != null) v.media = media;
  if (sizes != null) v.sizes = sizes;
  if (src != null) v.src = src;
  if (srcset != null) v.srcset = srcset;
  if (type != null) v.type = type;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

SpanElement spanElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = SpanElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

StyleElement styleElement(
    {bool? disabled,
    String? media,
    String? type,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = StyleElement();
  if (disabled != null) v.disabled = disabled;
  if (media != null) v.media = media;
  if (type != null) v.type = type;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

TableCaptionElement tableCaptionElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = TableCaptionElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

TableCellElement tableCellElement(
    {int? colSpan,
    String? headers,
    int? rowSpan,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = TableCellElement();
  if (colSpan != null) v.colSpan = colSpan;
  if (headers != null) v.headers = headers;
  if (rowSpan != null) v.rowSpan = rowSpan;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

TableColElement tableColElement(
    {int? span,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = TableColElement();
  if (span != null) v.span = span;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

TableElement tableElement(
    {TableCaptionElement? caption,
    TableSectionElement? tFoot,
    TableSectionElement? tHead,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = TableElement();
  if (caption != null) v.caption = caption;
  if (tFoot != null) v.tFoot = tFoot;
  if (tHead != null) v.tHead = tHead;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

TableRowElement tableRowElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = TableRowElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

TemplateElement templateElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = TemplateElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

TextAreaElement textAreaElement(
    {String? autocapitalize,
    bool? autofocus,
    int? cols,
    String? defaultValue,
    String? dirName,
    bool? disabled,
    int? maxLength,
    int? minLength,
    String? name,
    String? placeholder,
    bool? readOnly,
    bool? required,
    int? rows,
    String? selectionDirection,
    int? selectionEnd,
    int? selectionStart,
    String? value,
    String? wrap,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = TextAreaElement();
  if (autocapitalize != null) v.autocapitalize = autocapitalize;
  if (autofocus != null) v.autofocus = autofocus;
  if (cols != null) v.cols = cols;
  if (defaultValue != null) v.defaultValue = defaultValue;
  if (dirName != null) v.dirName = dirName;
  if (disabled != null) v.disabled = disabled;
  if (maxLength != null) v.maxLength = maxLength;
  if (minLength != null) v.minLength = minLength;
  if (name != null) v.name = name;
  if (placeholder != null) v.placeholder = placeholder;
  if (readOnly != null) v.readOnly = readOnly;
  if (required != null) v.required = required;
  if (rows != null) v.rows = rows;
  if (selectionDirection != null) v.selectionDirection = selectionDirection;
  if (selectionEnd != null) v.selectionEnd = selectionEnd;
  if (selectionStart != null) v.selectionStart = selectionStart;
  if (value != null) v.value = value;
  if (wrap != null) v.wrap = wrap;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

TitleElement titleElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = TitleElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

TrackElement trackElement(
    {bool? defaultValue,
    String? kind,
    String? label,
    String? src,
    String? srclang,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = TrackElement();
  if (defaultValue != null) v.defaultValue = defaultValue;
  if (kind != null) v.kind = kind;
  if (label != null) v.label = label;
  if (src != null) v.src = src;
  if (srclang != null) v.srclang = srclang;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

UListElement uListElement(
    {String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = UListElement();
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}

VideoElement videoElement(
    {int? height,
    String? poster,
    int? width,
    bool? autoplay,
    bool? controls,
    String? crossOrigin,
    num? currentTime,
    bool? defaultMuted,
    num? defaultPlaybackRate,
    bool? disableRemotePlayback,
    bool? loop,
    bool? muted,
    num? playbackRate,
    String? preload,
    String? src,
    MediaStream? srcObject,
    num? volume,
    String? nonce,
    Map<String, String>? attributes,
    List<Element>? children,
    Iterable<String>? classes,
    Map<String, String>? dataset,
    String? innerHtml,
    String? innerText,
    int? scrollLeft,
    int? scrollTop,
    String? contentEditable,
    String? dir,
    bool? draggable,
    bool? hidden,
    bool? inert,
    String? inputMode,
    String? lang,
    bool? spellcheck,
    int? tabIndex,
    String? title,
    bool? translate,
    String? className,
    String? id,
    String? slot,
    Iterable<Node>? nodes,
    String? text,
    void Function(Event)? onAbort,
    void Function(Event)? onBeforeCopy,
    void Function(Event)? onBeforeCut,
    void Function(Event)? onBeforePaste,
    void Function(Event)? onBlur,
    void Function(Event)? onCanPlay,
    void Function(Event)? onCanPlayThrough,
    void Function(Event)? onChange,
    void Function(MouseEvent)? onClick,
    void Function(MouseEvent)? onContextMenu,
    void Function(ClipboardEvent)? onCopy,
    void Function(ClipboardEvent)? onCut,
    void Function(Event)? onDoubleClick,
    void Function(MouseEvent)? onDrag,
    void Function(MouseEvent)? onDragEnd,
    void Function(MouseEvent)? onDragEnter,
    void Function(MouseEvent)? onDragLeave,
    void Function(MouseEvent)? onDragOver,
    void Function(MouseEvent)? onDragStart,
    void Function(MouseEvent)? onDrop,
    void Function(Event)? onDurationChange,
    void Function(Event)? onEmptied,
    void Function(Event)? onEnded,
    void Function(Event)? onError,
    void Function(Event)? onFocus,
    void Function(Event)? onInput,
    void Function(Event)? onInvalid,
    void Function(KeyboardEvent)? onKeyDown,
    void Function(KeyboardEvent)? onKeyPress,
    void Function(KeyboardEvent)? onKeyUp,
    void Function(Event)? onLoad,
    void Function(Event)? onLoadedData,
    void Function(Event)? onLoadedMetadata,
    void Function(MouseEvent)? onMouseDown,
    void Function(MouseEvent)? onMouseEnter,
    void Function(MouseEvent)? onMouseLeave,
    void Function(MouseEvent)? onMouseMove,
    void Function(MouseEvent)? onMouseOut,
    void Function(MouseEvent)? onMouseOver,
    void Function(MouseEvent)? onMouseUp,
    void Function(WheelEvent)? onMouseWheel,
    void Function(ClipboardEvent)? onPaste,
    void Function(Event)? onPause,
    void Function(Event)? onPlay,
    void Function(Event)? onPlaying,
    void Function(Event)? onRateChange,
    void Function(Event)? onReset,
    void Function(Event)? onResize,
    void Function(Event)? onScroll,
    void Function(Event)? onSearch,
    void Function(Event)? onSeeked,
    void Function(Event)? onSeeking,
    void Function(Event)? onSelect,
    void Function(Event)? onSelectStart,
    void Function(Event)? onStalled,
    void Function(Event)? onSubmit,
    void Function(Event)? onSuspend,
    void Function(Event)? onTimeUpdate,
    void Function(TouchEvent)? onTouchCancel,
    void Function(TouchEvent)? onTouchEnd,
    void Function(TouchEvent)? onTouchEnter,
    void Function(TouchEvent)? onTouchLeave,
    void Function(TouchEvent)? onTouchMove,
    void Function(TouchEvent)? onTouchStart,
    void Function(TransitionEvent)? onTransitionEnd,
    void Function(Event)? onVolumeChange,
    void Function(Event)? onWaiting,
    void Function(Event)? onFullscreenChange,
    void Function(Event)? onFullscreenError,
    void Function(WheelEvent)? onWheel}) {
  final v = VideoElement();
  if (height != null) v.height = height;
  if (poster != null) v.poster = poster;
  if (width != null) v.width = width;
  if (autoplay != null) v.autoplay = autoplay;
  if (controls != null) v.controls = controls;
  if (crossOrigin != null) v.crossOrigin = crossOrigin;
  if (currentTime != null) v.currentTime = currentTime;
  if (defaultMuted != null) v.defaultMuted = defaultMuted;
  if (defaultPlaybackRate != null) v.defaultPlaybackRate = defaultPlaybackRate;
  if (disableRemotePlayback != null)
    v.disableRemotePlayback = disableRemotePlayback;
  if (loop != null) v.loop = loop;
  if (muted != null) v.muted = muted;
  if (playbackRate != null) v.playbackRate = playbackRate;
  if (preload != null) v.preload = preload;
  if (src != null) v.src = src;
  if (srcObject != null) v.srcObject = srcObject;
  if (volume != null) v.volume = volume;
  if (nonce != null) v.nonce = nonce;
  if (attributes != null) v.attributes = attributes;
  if (children != null) v.children = children;
  if (classes != null) v.classes = classes;
  if (dataset != null) v.dataset = dataset;
  if (innerHtml != null) v.innerHtml = innerHtml;
  if (innerText != null) v.innerText = innerText;
  if (scrollLeft != null) v.scrollLeft = scrollLeft;
  if (scrollTop != null) v.scrollTop = scrollTop;
  if (contentEditable != null) v.contentEditable = contentEditable;
  if (dir != null) v.dir = dir;
  if (draggable != null) v.draggable = draggable;
  if (hidden != null) v.hidden = hidden;
  if (inert != null) v.inert = inert;
  if (inputMode != null) v.inputMode = inputMode;
  if (lang != null) v.lang = lang;
  if (spellcheck != null) v.spellcheck = spellcheck;
  if (tabIndex != null) v.tabIndex = tabIndex;
  if (title != null) v.title = title;
  if (translate != null) v.translate = translate;
  if (className != null) v.className = className;
  if (id != null) v.id = id;
  if (slot != null) v.slot = slot;
  if (nodes != null) v.nodes = nodes;
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
  if (onFullscreenChange != null)
    v.onFullscreenChange.listen(onFullscreenChange);
  if (onFullscreenError != null) v.onFullscreenError.listen(onFullscreenError);
  if (onWheel != null) v.onWheel.listen(onWheel);
  return v;
}
