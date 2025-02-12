/* 
  Title: Check Palindrome Funtion
  
  Created by Fausta Akbar
 */

String cleanString(String text) {
  return text.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
}

bool isPalindrome(String text) {
  final cleanText = cleanString(text);
  return cleanText == cleanText.split('').reversed.join('');
}
