import 'package:flutter_svg/svg.dart';
import 'package:kdms_mobile/modules/router.dart';
import 'package:kdms_mobile/style/color.dart';
import 'package:kdms_mobile/widget/button_shadow_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:octo_image/octo_image.dart';

class SignInProviderScreen extends StatefulWidget {
  @override
  _SignInProviderScreenState createState() => _SignInProviderScreenState();
}

class _SignInProviderScreenState extends State<SignInProviderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: OctoImage(
                        image: AssetImage("assets/image/logo/logo_kdms.png"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: OctoImage(
                        height: 150,
                        image:
                            AssetImage("assets/image/background/bg_doctor.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Text(
                      "Welcome",
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontSize: 20),
                    ),
                    Text(
                      "โรงพยาบาลของคนทำงาน\nบริการดี มีมาตรฐาน",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SvgPicture.asset(
                      "assets/image/logo/google_icon.svg",
                      semanticsLabel: 'Acme Logo',
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(height: 16),
                    ButtonShadowWidget(
                      label: "Create an Account",
                      color: AppColor.accentColorGreen,
                      textColor: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "or sign in with",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonShadowWidget(
                          // label: "Sign in with Google",
                          // icon: FontAwesomeIcons.google,
                          svg: "assets/image/logo/google_icon.svg",
                        ),
                        SizedBox(width: 16),
                        ButtonShadowWidget(
                          // label: "Sign in with Facebook",
                          icon: FontAwesomeIcons.facebook,
                          iconColor: AppColor.facebookColor,
                        ),
                        SizedBox(width: 16),
                        ButtonShadowWidget(
                          icon: FontAwesomeIcons.apple,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Modular.to.pushNamed(AppRouter().login);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: Theme.of(context).textTheme.bodyText1,
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign in',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
