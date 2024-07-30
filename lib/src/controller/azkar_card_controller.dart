import 'package:get/get.dart';

class AzkarCardController extends GetxController {
  var isLiked = false.obs;

  void toggleLike() {
    isLiked.value = !isLiked.value;
  }
}
