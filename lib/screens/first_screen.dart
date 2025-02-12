import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/first_controller.dart';
/* 
  Title: First Screen

  Created by Fausta Akbar
 */

class FirstScreen extends GetView<FirstController> {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          // --------------- Assets For Background Image ---------------
          image: DecorationImage(
            image: AssetImage("assets/background/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // --------------- Circle Image ---------------
                    Container(
                      width: 116,
                      height: 116,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                      child: const Image(
                          image: AssetImage("assets/icon/person.png")),
                    ),
                    const SizedBox(height: 48),

                    // --------------- Input Form (Name) ---------------
                    TextField(
                      onChanged: (value) => controller.name.value = value,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'Name',
                        hintStyle: GoogleFonts.poppins(
                          color: Color.fromRGBO(104, 103, 119, 0.36),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // --------------- Input Form (Palindrome) ---------------
                    TextField(
                      onChanged: (value) => controller.sentence.value = value,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'Palindrome',
                        hintStyle: GoogleFonts.poppins(
                          color: Color.fromRGBO(104, 103, 119, 0.36),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // --------------- Button Check ---------------
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: controller.checkPalindrome,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2B637B),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          'CHECK',
                          style: GoogleFonts.poppins(
                            color: Color(0xFFFFFFFF),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // --------------- Button Next ---------------
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: controller.goToSecondScreen,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2B637B),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          'NEXT',
                          style: GoogleFonts.poppins(
                            color: Color(0xFFFFFFFF),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
