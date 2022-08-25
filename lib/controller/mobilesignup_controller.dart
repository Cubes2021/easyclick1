import 'package:easyclick1/view/email_mobile_page.dart';
import 'package:get/get.dart';

class MobileSignUpControlle extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void navigatesignupPage() {
    Get.to(
      EmailMobilePage(),
    );
  }

  @override
  void update([List<Object>? ids, bool condition = true]) {
    super.update(ids, condition);
  }
}
