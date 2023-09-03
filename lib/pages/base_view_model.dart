import 'dart:async';

import 'package:flutter/foundation.dart';

abstract class BaseViewModel extends ChangeNotifier {
  final _subscriptions = <StreamSubscription>[];


  @protected
  @mustCallSuper
  void addStreamSubscription(StreamSubscription subscription) {
    _subscriptions.add(subscription);
  }

  @override
  @mustCallSuper
  void dispose() {
    super.dispose();
    for (var element in _subscriptions) {
      element.cancel();
    }
  }
}