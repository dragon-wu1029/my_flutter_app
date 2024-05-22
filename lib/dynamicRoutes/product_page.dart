import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 获取传递的参数
    final String productId = Get.parameters['id']!;
    final String productName = Get.parameters['name']!;

    return Scaffold(
      appBar: AppBar(title: Text('Product Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Product ID: $productId'),
            Text('Product Name: $productName'),
          ],
        ),
      ),
    );
  }
}
