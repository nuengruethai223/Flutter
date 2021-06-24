// import 'dart:html';

import 'package:after_layout/after_layout.dart';
import 'package:kdms_mobile/global_provider/app_provider.dart';
import 'package:kdms_mobile/style/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen>
    with AfterLayoutMixin, TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    // controller.forward().then((value) {
    //   context.read<AppProvider>().init();
    // });
    context.read<AppProvider>().init();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "WELCOME TO",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.teal[600],
                    fontStyle: FontStyle.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: OctoImage(
                image: AssetImage("assets/image/logo/logo_kdms.png"),
              ),
            ),
            Spacer(),
            SpinKitThreeBounce(color: Color.fromRGBO(105, 199, 219, 100)),
            Spacer(flex: 3),
            AppBar(
              backgroundColor: Color(0xFF00827E),
              toolbarHeight: 75,
              elevation: 0,
              title: Row(
                children: [
                  Image.asset(
                    'assets/image/logo/fintech_logo.png',
                    width: 30,
                    height: 30,
                  ),
                  Container(
                    child: RichText(
                      text: TextSpan(
                        text:
                            '     Copyright © 2020 Fintechino Co., Ltd. All Rights Reserved.',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 10.5,
                            color: Colors.white,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
