import 'package:get/get.dart';
import 'package:state_management_class/controller/app_controller.dart';

class AllBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AppController());

  }

}