import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class UserController extends GetConnect {
  // 定义API的基本地址
  final baseUrl = 'https://api.example.com';

  // 获取用户列表的方法
  Future<Response> getUsers() async {
    // 使用get方法发送GET请求，并且返回响应
    return await get('$baseUrl/users');
  }
}

class HomePage extends StatelessWidget {
  final UserController userController = UserController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetConnect Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                // 发送请求获取用户列表
                final response = await userController.getUsers();
                // 打印响应结果
                print(response.body);
              },
              child: Text('Get Users'),
            ),
          ],
        ),
      ),
    );
  }
}
