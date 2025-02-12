import 'package:get/get.dart';
import 'package:myapp/controllers/second_controller.dart';

class SecondBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SecondController());
  }
}
