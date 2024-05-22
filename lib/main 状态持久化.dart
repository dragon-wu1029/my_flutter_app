import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  // 初始化
  await GetStorage.init();

  runApp(const MyApp());
}

class CounterController extends GetxController {
  RxInt count = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    count.value = GetStorage().read('count') ?? 0;
  }

  increment() {
    count++;
    GetStorage().write('count', count.value);
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
      home: const PersistentStatePage(title: '状态持久化（Persistent State）'),
    );
  }
}

class PersistentStatePage extends StatelessWidget {
  const PersistentStatePage({super.key, required this.title});
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
          child: Obx(() => Text('Count: ${controller.count}'))),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
