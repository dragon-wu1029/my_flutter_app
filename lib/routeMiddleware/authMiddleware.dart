import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    // 假设有一个名为 isLoggedIn 的变量表示用户是否登录
    bool isLoggedIn = GetStorage().read('token') ?? false;
    if (!isLoggedIn) {
      return const RouteSettings(name: '/login');
    }
    return null;
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    // 页面构建开始时的逻辑
    print('Page build started');
    return super.onPageBuildStart(page);
  }

  @override
  void onPageDispose() {
    // 页面销毁时的逻辑
    print('Page disposed');
    super.onPageDispose();
  }
}
