import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

// 定义一个控制器类
class CounterController extends GetxController {
  RxInt count = 0.obs;

  void increment() {
    count++;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX GetView Example'),
        ),
        body: Center(
          // 使用GetView来显示CounterController的数据
          child: AwesomeView(),
        ),
      ),
      initialBinding: BindingsBuilder(() {
        Get.put(CounterController());
      }),
    );
  }
}

class AwesomeView extends GetView<CounterController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 感觉很鸡肋
        Obx(() => Text('Count: ${controller.count.value}')),
        ElevatedButton(
          onPressed: () {
            // 调用控制器的增加方法
            controller.increment();
          },
          child: Text('Increment Count'),
        ),
      ],
    );
  }
}
