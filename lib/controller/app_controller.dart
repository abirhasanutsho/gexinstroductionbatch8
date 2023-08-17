import 'package:get/get.dart';

class AppController extends GetxController {
  RxInt incremtnValue = 0.obs;

  incrementMethod() {
    incremtnValue.value++;
    update();
  }

  decrementMethod() {
    if (incremtnValue > 0) {
      incremtnValue.value--;
    }
    update();
  }
}
