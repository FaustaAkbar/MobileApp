import 'package:get/get.dart';
import 'package:myapp/models/user.dart';

class SecondController extends GetxController {
  final name = ''.obs;
  final selectedUser = Rxn<User>();

  @override
  void onInit() {
    super.onInit();
    name.value = Get.arguments['name'] ?? '';
  }

  void updateSelectedUser(User user) {
    selectedUser.value = user;
  }
}
