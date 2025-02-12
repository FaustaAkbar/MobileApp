import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/controllers/second_controller.dart';
import 'package:myapp/routes/app_routes.dart';
/* 
  Title: Second Screen
  
  Created by Fausta Akbar
 */

class SecondScreen extends GetView<SecondController> {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // --------------- AppBar Section ---------------
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
            onTap: () => Get.back(),
            child: Image(
              image: AssetImage("assets/icon/ic_back.png"),
              width: 48,
              height: 48,
            )),
        title: Text(
          'Second Screen',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey[300],
            height: 1.0,
          ),
        ),
      ),

      // --------------- Body Section ---------------
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --------------- Welcome Section ---------------
            Text(
              'Welcome',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 4),
            // --------------- Name Section ---------------
            Obx(() => Text(
                  controller.name.value,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                )),
            const Spacer(),

            // --------------- Selected User Section ---------------
            Center(
              child: Obx(() => Text(
                    controller.selectedUser.value?.fullName ??
                        'Selected User Name',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  )),
            ),
            const Spacer(),

            // --------------- Button Section (Choose a User) ---------------
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () => Get.toNamed(AppRoutes.THIRD),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2B637B),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Choose a User',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
