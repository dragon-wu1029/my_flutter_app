import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          primaryColor: Colors.purple[100],
          appBarTheme: AppBarTheme(
            color: Colors.purple[100],
            iconTheme: IconThemeData(color: Colors.white),
          ),
          textTheme: TextTheme()),
      darkTheme: ThemeData.dark(), // 黑色主题
      themeMode: ThemeMode.system, // 根据系统设置主题
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(Get.isDarkMode);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {
              // 切换明暗主题
              Get.isDarkMode
                  ? Get.changeTheme(ThemeData.light())
                  : Get.changeTheme(ThemeData.dark());
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello, GetX!'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 切换主题模式
                Get.changeThemeMode(
                    Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
              },
              child: Text('Toggle Theme Mode'),
            ),
          ],
        ),
      ),
    );
  }
}
