import 'package:easyclick1/view/otp_Verification_page.dart';
import 'package:get/get.dart';

class EmailPageController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void nextpage() {
    bool isSelected = true;

    Get.to(
      OTPVerificationPage(),
    );
  }

  void previousPage() {
    Get.back();
  }
}
