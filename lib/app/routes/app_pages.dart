import 'package:chalked/app/routes/middlewares/auth_middleware.dart';
import 'package:get/get.dart';

import 'package:chalked/app/modules/home/home.dart';
import 'package:chalked/app/modules/login/login.dart';
import 'package:chalked/app/modules/splash/splash.dart';

part 'app_routes.dart';

class AppPages {
  static const String initial = Routes.splash;

  static final List<GetPage> routes = <GetPage>[
    GetPage(
      name: _Paths.login,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => HomeView(),
      binding: HomeBinding(),
      middlewares: [
        AuthMiddleware(priority: 2),
      ],
    ),
    GetPage(
      name: _Paths.splash,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
