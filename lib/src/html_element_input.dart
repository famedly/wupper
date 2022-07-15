import 'dart:html';

import 'package:wupper/wupper.dart';

class ElementController {
  Element? _element;
  Element get element {
    if (_element == null) throw Exception("Element is not mounted");
    return _element!;
  }

  void attachMe(Element e) {
    _element = e;
  }
}

class InputElementController extends ElementController {
  String? get value => (element as InputElement).value;
  set value(String? value) => (element as InputElement).value = value;
}

class InputElementWidget extends HtmlElementWidget {
  final String? type;
  final String? value;
  final String? placeholder;
  final bool? autofocus;
  final InputElementController? controller;
  final String? autocomplete;
  final String? autocapitalize;
  final bool? disabled;

  InputElementWidget(
      {this.type,
      this.value,
      this.placeholder,
      this.autofocus,
      this.autocapitalize,
      this.controller,
      this.autocomplete,
      this.disabled,
      super.nonce,
      super.attributes,
      super.children,
      super.classes,
      super.dataset,
      super.innerHtml,
      super.innerText,
      super.scrollLeft,
      super.scrollTop,
      super.contentEditable,
      super.dir,
      super.draggable,
      super.hidden,
      super.inert,
      super.inputMode,
      super.lang,
      super.spellcheck,
      super.tabIndex,
      super.title,
      super.translate,
      super.className,
      super.id,
      super.slot,
      super.nodes,
      super.text,
      super.onAbort,
      super.onBeforeCopy,
      super.onBeforeCut,
      super.onBeforePaste,
      super.onBlur,
      super.onCanPlay,
      super.onCanPlayThrough,
      super.onChange,
      super.onClick,
      super.onContextMenu,
      super.onCopy,
      super.onCut,
      super.onDoubleClick,
      super.onDrag,
      super.onDragEnd,
      super.onDragEnter,
      super.onDragLeave,
      super.onDragOver,
      super.onDragStart,
      super.onDrop,
      super.onDurationChange,
      super.onEmptied,
      super.onEnded,
      super.onError,
      super.onFocus,
      super.onInput,
      super.onInvalid,
      super.onKeyDown,
      super.onKeyPress,
      super.onKeyUp,
      super.onLoad,
      super.onLoadedData,
      super.onLoadedMetadata,
      super.onMouseDown,
      super.onMouseEnter,
      super.onMouseLeave,
      super.onMouseMove,
      super.onMouseOut,
      super.onMouseOver,
      super.onMouseUp,
      super.onMouseWheel,
      super.onPaste,
      super.onPause,
      super.onPlay,
      super.onPlaying,
      super.onRateChange,
      super.onReset,
      super.onResize,
      super.onScroll,
      super.onSearch,
      super.onSeeked,
      super.onSeeking,
      super.onSelect,
      super.onSelectStart,
      super.onStalled,
      super.onSubmit,
      super.onSuspend,
      super.onTimeUpdate,
      super.onTouchCancel,
      super.onTouchEnd,
      super.onTouchEnter,
      super.onTouchLeave,
      super.onTouchMove,
      super.onTouchStart,
      super.onTransitionEnd,
      super.onVolumeChange,
      super.onWaiting,
      super.onFullscreenChange,
      super.onFullscreenError,
      super.onWheel});

  @override
  Element hook(BuildContext context, Element el) {
    final v = el as InputElement;
    inputElement = v;
    if (value != null) v.value = value;
    if (placeholder != null) v.placeholder = placeholder!;
    if (autofocus != null) v.autofocus = autofocus!;
    if (autocomplete != null) v.autocomplete = autocomplete!;
    if (autocapitalize != null) v.autocapitalize = autocapitalize!;
    if (disabled != null) v.disabled = disabled!;

    controller?.attachMe(v);
    return super.hook(context, v);
  }

  InputElement? inputElement;

  @override
  Element render(BuildContext context) =>
      hook(context, InputElement(type: type));
}

class TextAreaElementWidget extends HtmlElementWidget {
  final InputElementController? controller;
  TextAreaElementWidget(
      {this.controller,
      super.nonce,
      super.attributes,
      super.children,
      super.classes,
      super.dataset,
      super.innerHtml,
      super.innerText,
      super.scrollLeft,
      super.scrollTop,
      super.contentEditable,
      super.dir,
      super.draggable,
      super.hidden,
      super.inert,
      super.inputMode,
      super.lang,
      super.spellcheck,
      super.tabIndex,
      super.title,
      super.translate,
      super.className,
      super.id,
      super.slot,
      super.nodes,
      super.text,
      super.onAbort,
      super.onBeforeCopy,
      super.onBeforeCut,
      super.onBeforePaste,
      super.onBlur,
      super.onCanPlay,
      super.onCanPlayThrough,
      super.onChange,
      super.onClick,
      super.onContextMenu,
      super.onCopy,
      super.onCut,
      super.onDoubleClick,
      super.onDrag,
      super.onDragEnd,
      super.onDragEnter,
      super.onDragLeave,
      super.onDragOver,
      super.onDragStart,
      super.onDrop,
      super.onDurationChange,
      super.onEmptied,
      super.onEnded,
      super.onError,
      super.onFocus,
      super.onInput,
      super.onInvalid,
      super.onKeyDown,
      super.onKeyPress,
      super.onKeyUp,
      super.onLoad,
      super.onLoadedData,
      super.onLoadedMetadata,
      super.onMouseDown,
      super.onMouseEnter,
      super.onMouseLeave,
      super.onMouseMove,
      super.onMouseOut,
      super.onMouseOver,
      super.onMouseUp,
      super.onMouseWheel,
      super.onPaste,
      super.onPause,
      super.onPlay,
      super.onPlaying,
      super.onRateChange,
      super.onReset,
      super.onResize,
      super.onScroll,
      super.onSearch,
      super.onSeeked,
      super.onSeeking,
      super.onSelect,
      super.onSelectStart,
      super.onStalled,
      super.onSubmit,
      super.onSuspend,
      super.onTimeUpdate,
      super.onTouchCancel,
      super.onTouchEnd,
      super.onTouchEnter,
      super.onTouchLeave,
      super.onTouchMove,
      super.onTouchStart,
      super.onTransitionEnd,
      super.onVolumeChange,
      super.onWaiting,
      super.onFullscreenChange,
      super.onFullscreenError,
      super.onWheel});

  @override
  Element render(context) {
    final v = TextAreaElement();
    controller?.attachMe(v);
    return hook(context, v);
  }
}

class CheckboxInputElementWidget extends HtmlElementWidget {
  final bool? checked;

  CheckboxInputElementWidget(
      {this.checked,
      super.nonce,
      super.attributes,
      super.children,
      super.classes,
      super.dataset,
      super.innerHtml,
      super.innerText,
      super.scrollLeft,
      super.scrollTop,
      super.contentEditable,
      super.dir,
      super.draggable,
      super.hidden,
      super.inert,
      super.inputMode,
      super.lang,
      super.spellcheck,
      super.tabIndex,
      super.title,
      super.translate,
      super.className,
      super.id,
      super.slot,
      super.nodes,
      super.text,
      super.onAbort,
      super.onBeforeCopy,
      super.onBeforeCut,
      super.onBeforePaste,
      super.onBlur,
      super.onCanPlay,
      super.onCanPlayThrough,
      super.onChange,
      super.onClick,
      super.onContextMenu,
      super.onCopy,
      super.onCut,
      super.onDoubleClick,
      super.onDrag,
      super.onDragEnd,
      super.onDragEnter,
      super.onDragLeave,
      super.onDragOver,
      super.onDragStart,
      super.onDrop,
      super.onDurationChange,
      super.onEmptied,
      super.onEnded,
      super.onError,
      super.onFocus,
      super.onInput,
      super.onInvalid,
      super.onKeyDown,
      super.onKeyPress,
      super.onKeyUp,
      super.onLoad,
      super.onLoadedData,
      super.onLoadedMetadata,
      super.onMouseDown,
      super.onMouseEnter,
      super.onMouseLeave,
      super.onMouseMove,
      super.onMouseOut,
      super.onMouseOver,
      super.onMouseUp,
      super.onMouseWheel,
      super.onPaste,
      super.onPause,
      super.onPlay,
      super.onPlaying,
      super.onRateChange,
      super.onReset,
      super.onResize,
      super.onScroll,
      super.onSearch,
      super.onSeeked,
      super.onSeeking,
      super.onSelect,
      super.onSelectStart,
      super.onStalled,
      super.onSubmit,
      super.onSuspend,
      super.onTimeUpdate,
      super.onTouchCancel,
      super.onTouchEnd,
      super.onTouchEnter,
      super.onTouchLeave,
      super.onTouchMove,
      super.onTouchStart,
      super.onTransitionEnd,
      super.onVolumeChange,
      super.onWaiting,
      super.onFullscreenChange,
      super.onFullscreenError,
      super.onWheel});

  @override
  Element render(BuildContext context) {
    final v = CheckboxInputElement();

    if (checked != null) v.checked = checked!;

    return hook(context, v);
  }
}
