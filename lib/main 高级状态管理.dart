import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class CounterController extends GetxController {
  // 定义一个变量
  RxInt count = 0.obs;

  // 定义一个增加计数的方法
  void increment() {
    // 使用GetBuilder需要调用update()
    count++;
    update();
  }

  // 定义生命周期方法
  @override
  void onInit() {
    super.onInit();
    // 初始化操作
    print("CounterController initialized");
  }

  @override
  void onReady() {
    super.onReady();
    // 控制器准备好时的操作
    print("CounterController is ready");
  }

  @override
  void onClose() {
    // 控制器销毁时的操作
    print("CounterController is being closed");
    super.onClose();
  }
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
      home: const AdvancedStatePage(title: '高级状态管理（GetX Controller）'),
    );
  }
}

class AdvancedStatePage extends StatelessWidget {
  const AdvancedStatePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    // 实例化控制器
    final CounterController controller = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        // 使用 GetBuilder 监听控制器状态的变化
        child: GetBuilder<CounterController>(
          builder: (_) {
            return Text('Count: ${controller.count.value}');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
