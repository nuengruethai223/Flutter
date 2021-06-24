import 'package:kdms_mobile/modules/router.dart';
import 'package:kdms_mobile/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginProvider extends ChangeNotifier {
  String _username;
  String _password;

  LoginProvider();

  String get password => _password;

  set password(String value) {
    _password = (value ?? "").trim();
    notifyListeners();
  }

  String get username => _username;

  set username(String value) {
    _username = (value ?? "").trim();
    notifyListeners();
  }

  Future<void> login() async {
    Helper.showLoading();
    await Future.delayed(Duration(seconds: 1));
    Helper.closeLoading();
    try {
      Modular.to.pushNamedAndRemoveUntil(AppRouter.fromHomeModule().home, (_) => false);
    } catch (e) {
      print(e);
    }
  }
}
