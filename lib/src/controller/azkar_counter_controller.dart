import 'package:get/get.dart';

class AzkarCounterController extends GetxController {
  var count = 10.obs;

  void decrementCount() {
    if (count > 0) {
      count--;
    }
  }
}
