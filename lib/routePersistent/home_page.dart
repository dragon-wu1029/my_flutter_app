import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_controller.dart';
import 'user_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 获取持久性依赖
    final UserService userService = Get.find();
    Get.put(MyController());
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('Username: ${userService.username}')),
            ElevatedButton(
              onPressed: () {
                userService.login('John Doe');
                Get.offNamed('/news');
              },
              child: Text('Go News'),
            ),
          ],
        ),
      ),
    );
  }
}
