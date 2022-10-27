import 'dart:async';
import 'dart:html';

import 'package:wupper/wupper.dart';

class ElementController {
  Element? _element;

  StreamSubscription<Event>? elementChangeListener;
  List<VoidCallback> listeners = [];

  Element? get elementNullable => _element;
  Element get element {
    if (!isAttached) {
      throw Exception("Element is not mounted");
    }

    return _element!;
  }

  int get scrollHeight => element.scrollHeight;
  int get clientHeight => element.clientHeight;

  void attachMe(Element e) {
    elementChangeListener?.cancel();

    _element = e;
    elementChangeListener = e.onChange.listen(_onChange);
    elementChangeListener = e.onInput.listen(_onChange);
  }

  void _onChange(Event e) {
    for (var listener in listeners) {
      listener.call();
    }
  }

  void addListener(VoidCallback callback) {
    listeners.add(callback);
  }

  void dispose() {
    elementChangeListener?.cancel();
  }

  bool get isAttached => _element?.isConnected == true;
}

class InputElementController extends ElementController {
  InputElement get inputElement => (element as InputElement);
  String? get value => (elementNullable as InputElement?)?.value;
  set value(String? value) => (element as InputElement).value = value;
}

class TextAreaElementController extends ElementController {
  TextAreaElement get textAreaElement => (element as TextAreaElement);
  int get rows => textAreaElement.rows;
  String? get value => (elementNullable as TextAreaElement?)?.value;
  set value(String? value) => textAreaElement.value = value;
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
  final bool? checked;
  final bool? readOnly;

  InputElementWidget(
      {this.type,
      this.value,
      this.placeholder,
      this.autofocus,
      this.autocapitalize,
      this.controller,
      this.autocomplete,
      this.disabled,
      this.checked,
      this.readOnly,
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
      super.onWheel,
      super.postCreation});

  @override
  Element hook(BuildContext context, Element v) {
    // TODO: see how we can update the value when calling a new build
    if (controller?.isAttached == true && controller?.element is InputElement) {
      context.setElement(controller!.element);
      return controller!.element;
    }
    // TODO: update the attribute of the InputElement if the widget parameter are changed

    final el = v as InputElement;

    controller?.attachMe(el);

    if (value != null) el.value = value;
    if (placeholder != null) el.placeholder = placeholder!;
    if (autofocus != null) el.autofocus = autofocus!;
    if (autocomplete != null) el.autocomplete = autocomplete!;
    if (autocapitalize != null) el.autocapitalize = autocapitalize!;
    if (disabled != null) el.disabled = disabled!;
    if (checked != null) el.checked = checked!;
    if (readOnly != null) el.readOnly = readOnly!;

    return super.hook(context, el);
  }

  @override
  Element render(BuildContext context) =>
      hook(context, InputElement(type: type));
}

class TextAreaElementWidget extends HtmlElementWidget {
  final TextAreaElementController? controller;
  final String? value;
  TextAreaElementWidget(
      {this.controller,
      this.value,
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
      super.onWheel,
      super.postCreation});

  @override
  Element render(context) {
    if (controller?.isAttached == true &&
        controller?.element is TextAreaElement) {
      context.setElement(controller!.element);
      return controller!.element;
    }

    final v = TextAreaElement();

    controller?.attachMe(v);

    if (value != null) v.value = value;

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
      super.onWheel,
      super.postCreation});

  @override
  Element render(BuildContext context) {
    final v = CheckboxInputElement();

    if (checked != null) v.checked = checked!;

    return hook(context, v);
  }
}
