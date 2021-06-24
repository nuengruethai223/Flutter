class AppRouter {
  AppRouter({this.currentModule = ""});

  static AppRouter fromModule({String moduleName = ""}) =>
      AppRouter(currentModule: moduleName);

  static AppRouter fromHomeModule() => AppRouter(currentModule: "/home");

  static AppRouter toSaleModule() => AppRouter(currentModule: "/home/sales");
  String currentModule = "";

  String get login => currentModule + "/login";

  String get photoViewScreen => currentModule + "/photoViewScreen";

  String get signInProviderScreen => currentModule + "/signInProviderScreen";

  String get mainProviderScreen => currentModule + "/mainScreen";

  String get appoinmentProviderScreen => currentModule + "/appoinment";
  
   String get appoinmentListProviderScreen => currentModule + "/appoinmentList";

  String get home => "/home";

  static AppRouter check() => AppRouter();

  bool getWhiteStatusBar(String screenName) {
    bool check = false;
    List<String> whiteStatus = [
      home,
    ];
    for (var i in whiteStatus) {
      if (i.contains(screenName)) {
        check = true;
      }
      if (check) break;
    }
    return check;
  }
}
