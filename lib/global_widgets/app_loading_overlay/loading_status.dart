import 'package:flutter/foundation.dart';

enum LoadingStatus { initialLoading, refreshing, ready }

class LoadingStatusModel extends ChangeNotifier
    implements ValueListenable<LoadingStatus> {
  bool _isInitialized = false;
  int _count = 0;
  int _startTime = DateTime.now().millisecondsSinceEpoch;
  int _endTime = DateTime.now().millisecondsSinceEpoch;

  int get loadingTime => _endTime - _startTime;

  LoadingStatusModel({bool isInitialized = false})
      : _isInitialized = isInitialized;

  void begin() {
    _count++;
    if (_count == 1 && _isInitialized) {
      _startTime = DateTime.now().millisecondsSinceEpoch;
      notifyListeners();
    }
  }

  void end() {
    if (_count > 0) {
      _count--;
      if (_count == 0 && _isInitialized) {
        _endTime = DateTime.now().millisecondsSinceEpoch;
        notifyListeners();
      }
    }
  }

  void setIsInitialized(bool isInitialized) {
    if (_isInitialized != isInitialized) {
      _isInitialized = isInitialized;
      if (_count == 0) {
        notifyListeners();
      }
    }
  }

  Future<T> observe<T>(Future<T> future) {
    begin();
    return future.whenComplete(end);
  }

  bool get isLoading {
    return _count > 0;
  }

  bool get isInitialized {
    return _isInitialized;
  }

  @override
  LoadingStatus get value {
    if (!_isInitialized) {
      return LoadingStatus.initialLoading;
    }
    return _count == 0 ? LoadingStatus.ready : LoadingStatus.refreshing;
  }

  @override
  String toString() => '${describeIdentity(this)}($_count)';
}

extension LoadingStatusObserver<T> on Future<T> {
  Future<T> observe(LoadingStatusModel statusObserver) {
    statusObserver.observe(this);
    return this;
  }
}
