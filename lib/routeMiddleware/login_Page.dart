import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed('/'); // 返回之前的页面
            // 假设登录成功，设置 isLoggedIn 为 true
            GetStorage().write('token', true);
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}
