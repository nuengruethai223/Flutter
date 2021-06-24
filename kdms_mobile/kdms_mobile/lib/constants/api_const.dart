class APIConstance {
  APIConstance();

  String pathMapping(String api) {
    String url;
    List<String> apiCheckAuth = [];
    for (var data in apiCheckAuth) {
      url = api.contains(data) ? _apiBaseUrlAuth : url;
      if (url != null) break;
    }

    return url ?? _apiBaseUrlToken;
  }

  static String baseURLOnly = "https://book.fintechinno.com/slc/";
  final String _apiBaseUrlToken = baseURLOnly + "api/tablet/v1/";
  final String _apiBaseUrlAuth = baseURLOnly + "";
}
