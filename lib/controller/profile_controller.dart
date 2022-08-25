import 'package:easyclick1/view/booking.dart';
import 'package:easyclick1/view/edit_profile.dart';
import 'package:easyclick1/widgets/bottom_bar.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  void navigate() {
    Get.to(
      BookingPage(),
    );
  }

  void profileupdate() {
    Get.to(
      EditProfile(),
    );
  }
}
