import 'package:easyclick1/view/home_page.dart';
import 'package:easyclick1/view/otp_Verification_page.dart';
import 'package:easyclick1/widgets/bottom_bar.dart';
import 'package:get/get.dart';

class OTPVerification extends GetxController {
  OTPVerificationPage otpVerificationPage = OTPVerificationPage();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void verifyOTP() {
    Get.to(
      BottomBar(),
    );
  }

  void previousPage() {
    Get.back();
  }
}
