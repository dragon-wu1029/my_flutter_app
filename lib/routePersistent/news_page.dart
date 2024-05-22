import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'user_service.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 获取持久性依赖
    final UserService userService = Get.find();

    return Scaffold(
      appBar: AppBar(title: Text('News Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('Username: ${userService.username.value}')),
            ElevatedButton(
              onPressed: () {
                userService.login('John Doe');
                Get.offNamed('/');
              },
              child: Text('Go Home'),
            ),
          ],
        ),
      ),
    );
  }
}
