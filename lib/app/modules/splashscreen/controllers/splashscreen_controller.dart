import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashscreenController extends GetxController {

  final count = 0.obs;
  @override
  // Future<void> onReady() async {
  //   await Future.delayed(const Duration(seconds: 3));
  //   Get.offAllNamed(Routes.HOMEPAGE);
  //   super.onReady();
  // }

  void increment() => count.value++;
}
