import 'package:kdms_mobile/constants/props.dart';
import 'package:kdms_mobile/global_provider/app_provider.dart';
import 'package:kdms_mobile/repository/local/base_local.dart';
import 'package:kdms_mobile/utils/helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'api_exception.dart';
import 'api_provider.dart';

class AppInterceptors extends Interceptor {
  final _local = BaseLocalRepository();
  final NetworkProvider network;

  AppInterceptors(this.network);

  @override
  Future onRequestOption(RequestOptions options) async {
    String url = options.uri.toString().replaceAll(options.baseUrl, '');
    options.baseUrl = network.pathMapping(url);
    try {
      var data = options.data;
      var token = _local.systemData.apiToken;

      options.headers.update("Authorization", (value) => "Bearer ${token}",
          ifAbsent: () => "Bearer ${token}");

      if (options.method == "GET") {
        options.queryParameters = (options.queryParameters ?? {});
      }
      if (data is FormData) {
        if (data == null) data = FormData.fromMap({});

        data.fields.addAll({});
      } else {
        if (data == null) data = <String, dynamic>{};
      }
      options.data = data;
    } catch (e) {}
    return options;
  }

  @override
  Future onErrorOption(DioError err) async {
    try {
      if (err.response.statusCode == 401) {
        Helper.showMessageSuccess(
            title: "Logout",
            color: Colors.orange,
            message: "You have been signed in with another phone.");
        navKey.currentState.overlay.context
            .read<AppProvider>()
            .logout(dontAsk: true);
      }
      APIException exception = APIException.form(dioError: err);
      return exception;
    } catch (e) {
      return err;
    }
  }

  @override
  Future onResponseOption(Response response) {
    return Future.value(response);
  }
}
