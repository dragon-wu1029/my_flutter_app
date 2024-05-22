import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/routePersistent/my_controller.dart';
import 'routePersistent/news_page.dart';
import 'routePersistent/user_service.dart';
import 'routePersistent/home_page.dart';

void main() async {
  // 注册持久性依赖
  Get.put<UserService>(UserService(), permanent: true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/news', page: () => NewsPage())
      ],
    );
  }
}
