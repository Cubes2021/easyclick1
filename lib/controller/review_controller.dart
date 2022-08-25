import 'package:easyclick1/view/booking_details.dart';
import 'package:get/get.dart';

class ReviewController extends GetxController {
  void navigate() {
    Get.to(
      BookingDetailPage(),
    );
  }

  @override
  void update([List<Object>? ids, bool condition = true]) {
    // TODO: implement update
    super.update(ids, condition);
  }
}
