import 'package:easyclick1/view/cart_page.dart';
import 'package:get/get.dart';

class ListingController extends GetxController {
  var add = 0.obs;
  void addInCart() {
    add++;
    print(add);
  }

  void removeFromCart() {
    add--;
    print(add);
    if (add <= 0) {
      add = 0.obs;
    }
  }

  void navigatePage() {
    Get.to(
      CartPage(),
    );
  }

  @override
  void update([List<Object>? ids, bool condition = true]) {
    super.update(ids, condition);
  }
}
