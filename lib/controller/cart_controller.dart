import 'package:easyclick1/view/service_description.dart';
import 'package:easyclick1/view/time_slot.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  void navigate() {
    Get.to(
      TimeSlotPage(),
    );
  }

  void navigateback() {
    Get.to(
      ServiceDescriptionPage(),
    );
  }
}
