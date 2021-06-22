import 'package:kdms_mobile/screen/appointment.dart';
import 'package:kdms_mobile/screen/photo_view/photo_view_screen.dart';
import 'package:kdms_mobile/screen/signin/login_screen/login_provider.dart';
import 'package:kdms_mobile/screen/signin/login_screen/login_screen.dart';
import 'package:kdms_mobile/screen/signin/signin_provider_screen.dart';
import 'package:kdms_mobile/screen/main_screen.dart';
import 'package:kdms_mobile/screen/start/start_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

import 'page_transition.dart';
import 'router.dart';

class AppModule extends Module {
  final AppRouter appRouter = AppRouter();
  final MyPageTransition transition = MyPageTransition();

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          transition: TransitionType.custom,
          customTransition: transition.fadeThroughTransition,
          child: (context, args) => StartScreen(),
        ),
        ChildRoute(
          appRouter.mainProviderScreen,
          transition: TransitionType.custom,
          customTransition: transition.fadeThroughTransition,
          child: (context, args) => MainScreen(),
        ),
        ChildRoute(
          appRouter.appoinmentProviderScreen,
          transition: TransitionType.custom,
          customTransition: transition.fadeThroughTransition,
          child: (context, args) => Appointment(),
        ),
        ChildRoute(
          appRouter.signInProviderScreen,
          transition: TransitionType.custom,
          customTransition: transition.fadeThroughTransition,
          child: (context, args) => SignInProviderScreen(),
        ),
        ChildRoute(
          appRouter.login,
          transition: TransitionType.custom,
          customTransition: transition.fadeThroughTransition,
          child: (context, args) => ChangeNotifierProvider<LoginProvider>(
            create: (context) => LoginProvider(),
            child: LoginScreen(),
          ),
        ),
        ChildRoute(
          appRouter.photoViewScreen,
          transition: TransitionType.custom,
          customTransition: transition.fadeThroughTransition,
          child: (context, args) {
            var data = args.data ?? {};
            return PhotoViewScreen(
              imageProvider: data["imageProvider"],
              heroTag: data['heroTag'],
            );
          },
        ),
      ];
}
