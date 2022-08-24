import 'package:get/get.dart';

class CheckOutController extends GetxController {
  RxInt isSelected = 0.obs;

  RadioSelected(RxInt value) {
    isSelected = value;
    print(isSelected.toString());
  }

  @override
  void update([List<Object>? ids, bool condition = true]) {
    super.update(ids, condition);
  }
}
