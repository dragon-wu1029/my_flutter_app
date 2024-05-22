import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              // 导航到 ProductPage，并传递参数
              onPressed: () => Get.toNamed('/product/123/Widget'),
              child: const Text('Go to Product Page'),
            ),
          ],
        ),
      ),
    );
  }
}
