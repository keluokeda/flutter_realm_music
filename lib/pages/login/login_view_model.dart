import 'package:flutter/foundation.dart';
import 'package:flutter_realm_music/api/http_service.dart';
import 'package:flutter_realm_music/repository/user_repository.dart';
import 'package:rxdart/rxdart.dart';

class LoginViewModel extends ChangeNotifier {
  final BehaviorSubject<bool> _behaviorSubject = BehaviorSubject();

  ///登录成功回调事件
  Stream<bool> get loginSuccessEvent => _behaviorSubject.stream;

  bool _loading = false;

  bool get loading => _loading;

  /// null表示加载中 空表示创建异常
  String? _qrUrl;

  String? get qrUrl => _qrUrl;

  String? _key;

  LoginViewModel() {
    refresh();
  }

  Future refresh() async {
    _qrUrl = null;
    notifyListeners();
    _key = await HttpService.instance.createKey();
    if (_key == null) {
      return;
    }
    _qrUrl = await HttpService.instance.createLoginUrl(_key!);
    notifyListeners();
  }

  ///开始登录
  startLogin() async {
    if (_key == null) {
      return;
    }
    _loading = true;
    notifyListeners();
    final result = await HttpService.instance.checkLoginResult(_key!);
    if (result) {
      final loginStatus = await HttpService.instance.loginStatus();
      //这里保存登录用户 后面就不用再判断了
      UserRepository.instance.saveUser(loginStatus!.data!.profile!);
      HttpService.instance.setUserId(loginStatus.data!.profile!.userId);
      _behaviorSubject.add(result);
    }
    _loading = false;
    notifyListeners();
  }
}
