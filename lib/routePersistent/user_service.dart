// 定义一个需要持久化的依赖类
import 'package:get/get.dart';

class UserService extends GetxService {
  RxString username = 'Guest'.obs;

  void login(String name) {
    username.value = name;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print('init');
  }

  void onClose() {
    print('close');
  }
}
