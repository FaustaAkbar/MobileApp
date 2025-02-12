import 'package:get/get.dart';
import 'package:myapp/controllers/first_controller.dart';

class FirstBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FirstController());
  }
}
