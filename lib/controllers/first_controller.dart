import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/utils/palindrome_checker.dart';
/* 
  Title: First Controller
  
  Created by Fausta Akbar
 */

class FirstController extends GetxController {
  final name = ''.obs;
  final sentence = ''.obs;

  // -------- Check For Palindrome ---------
  void checkPalindrome() {
    final isPalindromeResult = isPalindrome(sentence.value);
    Get.dialog(
      AlertDialog(
        title: const Text('Palindrome Check'),
        content: Text(isPalindromeResult ? 'isPalindrome' : 'not palindrome'),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void goToSecondScreen() {
    if (name.value.isNotEmpty) {
      Get.toNamed(
        '/second',
        arguments: {'name': name.value},
      );
    }
  }
}
