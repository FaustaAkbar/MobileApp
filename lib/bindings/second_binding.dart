import 'package:get/get.dart';
import 'package:myapp/controllers/second_controller.dart';
/* 
  Title: Second bindings
  
  Created by Fausta Akbar
 */

class SecondBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SecondController());
  }
}
