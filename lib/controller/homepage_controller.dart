import 'package:easyclick1/widgets/bottom_bar.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void homeController() {
    Get.to(
      BottomBar(),
    );
  }
}
