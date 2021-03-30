import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final RxInt count = 0.obs;

  @override
  void onClose() {}
  void increment() => count.value++;
}
