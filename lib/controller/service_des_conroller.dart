import 'package:get/get.dart';

class ServiceController extends GetxController {
  int addcount = 0;

  void countCart() {
    addcount++;
    print(addcount);
    if (addcount <= 0) {
      addcount = 0;
    }
  }

  @override
  void update([List<Object>? ids, bool condition = true]) {
    super.update(ids, condition);
  }
}
