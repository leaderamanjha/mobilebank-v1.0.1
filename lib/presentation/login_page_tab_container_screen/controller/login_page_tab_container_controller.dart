import 'package:mobilebank/core/app_export.dart';
import 'package:mobilebank/presentation/login_page_tab_container_screen/models/login_page_tab_container_model.dart';
import 'package:flutter/material.dart';

class LoginPageTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<LoginPageTabContainerModel> loginPageTabContainerModelObj =
      LoginPageTabContainerModel().obs;

  late TabController loginsignupController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
