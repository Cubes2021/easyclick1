import 'package:easyclick1/view/otp_Verification_page.dart';
import 'package:get/get.dart';

class EmailPageController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void emailController() {
    Get.to(
      OTPVerificationPage(),
    );
  }
}
