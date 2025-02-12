import 'package:get/get.dart';
import 'package:myapp/controllers/first_controller.dart';
/* 
  Title: First Bindings
  
  Created by Fausta Akbar
 */

class FirstBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FirstController());
  }
}
