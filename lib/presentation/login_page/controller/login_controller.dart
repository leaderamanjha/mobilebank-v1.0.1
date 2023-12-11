import 'package:mobilebank/core/app_export.dart';
import 'package:mobilebank/presentation/login_page/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  LoginController(this.loginModelObj);

  TextEditingController emailOneController = TextEditingController();

  TextEditingController passwordOneController = TextEditingController();

  Rx<LoginModel> loginModelObj;

  Rx<bool> isCheckbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailOneController.dispose();
    passwordOneController.dispose();
  }
}
