import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/controllers/third_controller.dart';

class ThirdScreen extends GetView<ThirdController> {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // --------------- AppBar Section ---------------
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
            onTap: () => Get.back(),
            child: Image(image: AssetImage("assets/icon/ic_back.png"))),
        title: Text(
          'Third Screen',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Obx(() => RefreshIndicator(
              onRefresh: () => controller.loadUsers(refresh: true),
              child: _buildContent(),
            )),
      ),
    );
  }

  Widget _buildContent() {
    if (controller.users.isEmpty) {
      if (controller.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }
      if (controller.hasError.value) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Failed to load users',
                style: GoogleFonts.poppins(),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () => controller.loadUsers(refresh: true),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2B637B),
                ),
                child: Text(
                  'Retry',
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      }
      return Center(
        child: Text(
          'No users found',
          style: GoogleFonts.poppins(),
        ),
      );
    }

    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (scrollInfo.metrics.pixels >=
            scrollInfo.metrics.maxScrollExtent - 200) {
          if (controller.hasMoreData.value && !controller.isLoading.value) {
            controller.loadUsers();
          }
        }
        return true;
      },

      // --------------- ListView Section ---------------
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemCount:
            controller.users.length + (controller.hasMoreData.value ? 1 : 0),
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey[300],
          height: 1,
        ),
        itemBuilder: (context, index) {
          if (index == controller.users.length) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: CircularProgressIndicator(),
              ),
            );
          }

          final user = controller.users[index];
          return InkWell(
            onTap: () => controller.selectUser(user),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  // --------------- User Image ---------------
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.network(
                      user.avatar,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),

                  // --------------- User Details ---------------
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user.fullName,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          user.email.toUpperCase(),
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
