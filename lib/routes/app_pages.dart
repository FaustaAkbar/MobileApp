import 'package:get/get.dart';
import 'package:myapp/bindings/first_binding.dart';
import 'package:myapp/bindings/second_binding.dart';
import 'package:myapp/bindings/third_binding.dart';
import 'package:myapp/screens/first_screen.dart';
import 'package:myapp/screens/second_screen.dart';
import 'package:myapp/screens/third_screen.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.FIRST,
      page: () => const FirstScreen(),
      binding: FirstBinding(),
    ),
    GetPage(
      name: AppRoutes.SECOND,
      page: () => const SecondScreen(),
      binding: SecondBinding(),
    ),
    GetPage(
      name: AppRoutes.THIRD,
      page: () => const ThirdScreen(),
      binding: ThirdBinding(),
    ),
  ];
}
