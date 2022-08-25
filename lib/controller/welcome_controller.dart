import 'dart:async';

import 'package:get/get.dart';

import '../view/mobilesignup_view.dart';

class WelcomeController extends GetxController {
  @override
  void onInit() {
    Timer(
      Duration(seconds: 3),
      () => Get.offAll(
        MobileSignUpPage(),
      ),
    );
    super.onInit();
    update();
  }
}
