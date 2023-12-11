import 'package:mobilebank/core/app_export.dart';
import 'package:mobilebank/presentation/sign_up_page/models/sign_up_model.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  SignUpController(this.signUpModelObj);

  TextEditingController languageController = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  TextEditingController frame212Controller = TextEditingController();

  TextEditingController frame213Controller = TextEditingController();

  TextEditingController frame214Controller = TextEditingController();

  Rx<SignUpModel> signUpModelObj;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
    emailOneController.dispose();
    frame212Controller.dispose();
    frame213Controller.dispose();
    frame214Controller.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    signUpModelObj.value.dropdownItemList.value.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    signUpModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    signUpModelObj.value.dropdownItemList1.value.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    signUpModelObj.value.dropdownItemList1.refresh();
  }
}
