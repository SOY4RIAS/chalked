import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final RxInt count = 0.obs;

  @override
  void onClose() {}
  void increment() => count.value++;
}
