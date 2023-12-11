import '../currency_settings_bottomsheet/widgets/list_item_widget.dart';
import 'controller/currency_settings_controller.dart';
import 'models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mobilebank/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CurrencySettingsBottomsheet extends StatelessWidget {
  CurrencySettingsBottomsheet(this.controller);

  CurrencySettingsController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 25, right: 24, bottom: 25),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL40),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 15, right: 17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_currency".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold18),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCloseBlack900,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 1, bottom: 7),
                                    onTap: () {
                                      onTapImgClose();
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 9, bottom: 44),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(15));
                              },
                              itemCount: controller.currencySettingsModelObj
                                  .value.listItemList.value.length,
                              itemBuilder: (context, index) {
                                ListItemModel model = controller
                                    .currencySettingsModelObj
                                    .value
                                    .listItemList
                                    .value[index];
                                return ListItemWidget(model);
                              })))
                    ]))));
  }

  onTapImgClose() {
    Get.back();
  }
}
