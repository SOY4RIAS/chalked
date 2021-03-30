import 'package:chalked/app/data/services/firebase_service.dart';
import 'package:get/get.dart';
import 'controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<FireBaseService>(FireBaseService());
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
  }
}
