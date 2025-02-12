import 'package:get/get.dart';
import 'package:myapp/controllers/second_controller.dart';
import 'package:myapp/models/user.dart';
import 'package:myapp/services/user_service.dart';
/* 
  Title: Third Controller
  
  Created by Fausta Akbar
 */

class ThirdController extends GetxController {
  final UserService _userService = Get.find<UserService>();

  final users = <User>[].obs;
  final isLoading = false.obs;
  final hasError = false.obs;
  final currentPage = 1.obs;
  final hasMoreData = true.obs;

  static const int perPage = 10;

  @override
  void onInit() {
    super.onInit();
    loadUsers();
  }

  Future<void> loadUsers({bool refresh = false}) async {
    if (isLoading.value) return;

    if (refresh) {
      users.clear();
      currentPage.value = 1;
      hasMoreData.value = true;
      hasError.value = false;
    }

    isLoading.value = true;

    try {
      final newUsers = await _userService.getUsers(
        page: currentPage.value,
        perPage: perPage,
      );

      users.addAll(newUsers);
      hasMoreData.value = newUsers.length == perPage;
      currentPage.value++;
      hasError.value = false;
    } catch (e) {
      hasError.value = true;
    } finally {
      isLoading.value = false;
    }
  }

  void selectUser(User user) {
    final SecondController secondController = Get.find<SecondController>();
    secondController.updateSelectedUser(user);
    Get.back();
  }
}
