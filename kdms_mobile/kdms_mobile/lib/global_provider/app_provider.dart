import 'package:kdms_mobile/modules/router.dart';
import 'package:kdms_mobile/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppProvider extends ChangeNotifier {
  Future<void> init() async {
    await Future.delayed(Duration(seconds: 5));
    Modular.to.pushNamed(AppRouter.fromModule().mainProviderScreen);
  }
  Future<void> logout({bool dontAsk = false}) async {
    bool r = false;

    if (!dontAsk)
      r = await Helper.askDialog<bool>(
        title: "Logout",
        content: "Do you want to logout?",
      );
    if (r || dontAsk) {
      Helper.showLoading();
      try {} catch (e) {}
      Helper.closeLoading();
      try {
        Modular.to.pushNamedAndRemoveUntil(Modular.initialRoute, (_) => false);
      } catch (ew) {}
    }
  }
}
