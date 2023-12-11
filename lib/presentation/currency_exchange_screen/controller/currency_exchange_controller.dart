import 'package:mobilebank/core/app_export.dart';
import 'package:mobilebank/presentation/currency_exchange_screen/models/currency_exchange_model.dart';
import 'package:flutter/material.dart';

class CurrencyExchangeController extends GetxController {
  TextEditingController priceController = TextEditingController();

  TextEditingController priceTwoController = TextEditingController();

  TextEditingController group2960Controller = TextEditingController();

  Rx<CurrencyExchangeModel> currencyExchangeModelObj =
      CurrencyExchangeModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    priceController.dispose();
    priceTwoController.dispose();
    group2960Controller.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    currencyExchangeModelObj.value.dropdownItemList.value.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    currencyExchangeModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    currencyExchangeModelObj.value.dropdownItemList1.value.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    currencyExchangeModelObj.value.dropdownItemList1.refresh();
  }
}
