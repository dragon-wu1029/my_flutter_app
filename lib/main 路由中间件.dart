import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_flutter_app/routeMiddleware/authMiddleware.dart';
import 'routeMiddleware/home_page.dart';
import 'routeMiddleware/login_Page.dart';
import 'routeMiddleware/second_page.dart';

void main() async {
  // 初始化
  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => const HomePage()),
          GetPage(
            name: '/second',
            page: () => const SecondPage(),
            middlewares: [AuthMiddleware()], // 应用中间件
          ),
          GetPage(name: '/login', page: () => const LoginPage()),
        ],
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ));
  }
}
