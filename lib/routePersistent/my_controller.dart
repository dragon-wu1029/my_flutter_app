import 'package:get/get.dart';

class MyController extends GetxController {
  RxInt count = 0.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print('不是持久依赖开始');
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print('不是持久依赖销毁');
  }
}
