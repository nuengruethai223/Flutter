import 'package:kdms_mobile/style/color.dart';
import 'package:kdms_mobile/widget/button_shadow_widget.dart';
import 'package:kdms_mobile/widget/fade_list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var de = InputDecoration(
    fillColor: Colors.white,
    contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
    filled: true,
    prefixIcon: Icon(Icons.person_outline_rounded),
    border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
  );

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).viewInsets.bottom);
    bool show = MediaQuery.of(context).viewInsets.bottom == 0;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (show)
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: OctoImage(
                  image: AssetImage("assets/image/logo/logo_asia.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_rounded),
                  onPressed: () {},
                ),
                // if (!show)
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Sign in",
                    style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            // if (show)
            //   Padding(
            //     padding: const EdgeInsets.all(16.0),
            //     child: Text(
            //       "Sign in",
            //       style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
            //     ),
            //   ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColor.accentColorGreen,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: FadeListViewWidget(
                  color: AppColor.accentColorGreen,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: SafeArea(
                      top: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Back",
                            style: Theme.of(context).textTheme.headline6.copyWith(
                                  fontSize: 26,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            "Hello there, sign in to continue!",
                            style: Theme.of(context).textTheme.bodyText1.copyWith(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "Username or Email",
                            style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white.withOpacity(0.8)),
                          ),
                          TextFormField(
                            decoration: de.copyWith(
                              prefixIcon: Icon(Icons.person_outline_rounded),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Password",
                            style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white.withOpacity(0.8)),
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: de.copyWith(
                              prefixIcon: Icon(Icons.lock_outline_rounded),
                            ),
                          ),
                          Text(
                            "Forgot Password?",
                            style: Theme.of(context).textTheme.bodyText1.copyWith(
                                  fontWeight: FontWeight.normal,
                                  color: AppColor.accentColorYellow,
                                ),
                          ),
                          SizedBox(height: 16),
                          ButtonShadowWidget(
                            label: "Sign in",
                            color: AppColor.accentColorYellow,
                          ),
                          SizedBox(height: 16),
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                // Modular.to.pushNamed(AppRouter().login);
                              },
                              child: RichText(
                                text: TextSpan(
                                  text: 'Don’t have an account? ',
                                  style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white, fontWeight: FontWeight.normal),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Sign up',
                                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                                            fontWeight: FontWeight.normal,
                                            color: AppColor.accentColorYellow,
                                          ),
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
