import 'dart:async';

import 'package:get/get.dart';

import '../view/welcome_view.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(
      Duration(seconds: 3),
      () => Get.offAll(
        WelcomeScreen(),
      ),
    );
    super.onInit();
    update();
  }
}
