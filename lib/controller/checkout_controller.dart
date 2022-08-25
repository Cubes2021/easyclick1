import 'package:easyclick1/view/booking.dart';
import 'package:get/get.dart';

class CheckOutController extends GetxController {
  bool isSelected = false;

  RadioSelected() {
    isSelected = true;
    print(isSelected);
  }

  void navigate() {
    Get.to(
      BookingPage(),
    );
  }

  @override
  void update([List<Object>? ids, bool condition = true]) {
    super.update(ids, condition);
  }
}
