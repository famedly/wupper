import 'dart:html';

import 'package:wupper/wupper.dart';

class MediaElementController extends ElementController {
  MediaElement get player => element as MediaElement;
  Future<dynamic> play() => player.play();
  void pause() => player.pause();

  bool get loop => player.loop;
  set loop(value) => player.loop = value;
}

class AudioElementWidget extends HtmlElementWidget {
  final String? src;
  final bool? loop;
  final MediaElementController? controller;

  AudioElementWidget(
      {this.src,
      this.loop,
      this.controller,
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
    final v = AudioElement(src);
    if (loop != null) v.loop = loop!;

    controller?.attachMe(v);

    return hook(context, v);
  }
}
