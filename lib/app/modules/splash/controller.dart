import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final RxBool isInitialized = false.obs;

  void initFB() {
    Firebase.initializeApp();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
