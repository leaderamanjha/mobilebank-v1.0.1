import 'package:mobilebank/core/app_export.dart';
import 'package:mobilebank/presentation/statistics_tab_container_page/models/statistics_tab_container_model.dart';
import 'package:flutter/material.dart';

class StatisticsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  StatisticsTabContainerController(this.statisticsTabContainerModelObj);

  Rx<StatisticsTabContainerModel> statisticsTabContainerModelObj;

  late TabController incomeController =
      Get.put(TabController(vsync: this, length: 2));

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    statisticsTabContainerModelObj.value.dropdownItemList.value
        .forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    statisticsTabContainerModelObj.value.dropdownItemList.refresh();
  }
}
