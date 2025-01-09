import 'package:chalked/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import 'package:chalked/app/data/services/firebase_service.dart';

class AuthMiddleware implements GetMiddleware {
  AuthMiddleware({this.priority});

  @override
  int priority = 0;

  @override
  RouteSettings redirect(String route) {
    final FirebaseAuth firebaseAuth = Get.find<FireBaseService>().firebaseAuth;

    return firebaseAuth.currentUser != null
        ? null
        : const RouteSettings(name: Routes.login);
  }

  @override
  GetPage onPageCalled(GetPage page) => page;

  @override
  List<Bindings> onBindingsStart(List<Bindings> bindings) => bindings;

  @override
  GetPageBuilder onPageBuildStart(GetPageBuilder page) => page;

  @override
  Widget onPageBuilt(Widget page) => page;

  @override
  void onPageDispose() {}
}
