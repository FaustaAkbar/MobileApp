import 'package:get/get.dart';
import 'package:myapp/controllers/third_controller.dart';
import 'package:myapp/services/user_service.dart';
/* 
  Title: Third Bindings
  
  Created by Fausta Akbar
 */

class ThirdBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(UserService());
    Get.put(ThirdController());
  }
}
