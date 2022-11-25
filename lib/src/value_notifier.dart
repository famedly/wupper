import 'dart:html';

/// Holds a value and can add or remove Listeners to it. Use
/// `ValueNotifierBuilder` to build reactive widgets with this.
class ValueNotifier<T> {
  T _value;
  final Set<VoidCallback> _listeners = {};
  bool _disposed = false;

  ValueNotifier(this._value);

  T get value => _value;

  set value(T newValue) {
    if (_disposed) {
      throw Exception('Called `set` on disposed ValueNotifier');
    }
    _value = newValue;
    for (var cb in _listeners) {
      cb();
    }
  }

  bool get hasListener => _listeners.isNotEmpty;

  void addListener(VoidCallback cb) {
    if (_disposed) {
      throw Exception('Called `addListener()` on disposed ValueNotifier');
    }
    _listeners.add(cb);
  }

  void removeListener(VoidCallback cb) {
    if (_disposed) {
      throw Exception('Called `removeListener()` on disposed ValueNotifier');
    }
    _listeners.remove(cb);
  }

  /// Discards any resources used by the object. After this is called, the
  /// object is not in a usable state and should be discarded (calls to
  /// addListener will throw after the object is disposed).
  void dispose() {
    _disposed = true;
    _listeners.clear();
  }
}
