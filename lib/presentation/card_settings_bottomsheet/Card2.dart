import 'controller/card_settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:mobilebank/core/app_export.dart';
import 'package:mobilebank/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class CardSettingsBottomsheet extends StatelessWidget {
  CardSettingsBottomsheet(this.controller);

  CardSettingsController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 22, right: 24, bottom: 22),
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
                                Text("lbl_card".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold18),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCloseBlack900,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 4, bottom: 4),
                                    onTap: () {
                                      onTapImgClose();
                                    })
                              ])),
                      Padding(
                          padding: getPadding(left: 15, top: 27, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorRedA700,
                                    height: getVerticalSize(23),
                                    width: getHorizontalSize(198)),
                                Padding(
                                    padding: getPadding(top: 4, bottom: 4),
                                    child: Obx(() => CustomRadioButton(
                                        width: getHorizontalSize(15),
                                        iconSize: getHorizontalSize(15),
                                        value: "",
                                        groupValue: controller.radioGroup.value,
                                        margin: getMargin(top: 4, bottom: 4),
                                        isRightCheck: true,
                                        onChange: (value) {
                                          controller.radioGroup.value = value;
                                        })))
                              ])),
                      Container(
                          margin: getMargin(top: 29),
                          padding: getPadding(
                              left: 15, top: 14, right: 15, bottom: 14),
                          decoration: AppDecoration.outlineBlack9000c.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgVectorRedA70023x198,
                                    height: getVerticalSize(23),
                                    width: getHorizontalSize(198),
                                    margin: getMargin(top: 1)),
                                Padding(
                                    padding:
                                        getPadding(top: 5, right: 5, bottom: 4),
                                    child: Obx(() => CustomRadioButton(
                                        width: getHorizontalSize(15),
                                        iconSize: getHorizontalSize(15),
                                        value: "",
                                        groupValue:
                                            controller.radioGroup1.value,
                                        margin: getMargin(
                                            top: 5, right: 5, bottom: 4),
                                        isRightCheck: true,
                                        onChange: (value) {
                                          controller.radioGroup1.value = value;
                                        })))
                              ])),
                      Container(
                          margin: getMargin(top: 15, bottom: 47),
                          padding: getPadding(
                              left: 15, top: 18, right: 15, bottom: 18),
                          decoration: AppDecoration.outlineBlack9000c.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgVectorIndigoA10015x210,
                                    height: getVerticalSize(15),
                                    width: getHorizontalSize(210),
                                    margin: getMargin(top: 1)),
                                Padding(
                                    padding: getPadding(top: 1, right: 5),
                                    child: Obx(() => CustomRadioButton(
                                        width: getHorizontalSize(15),
                                        value: "",
                                        groupValue:
                                            controller.radioGroup2.value,
                                        margin: getMargin(top: 1, right: 5),
                                        onChange: (value) {
                                          controller.radioGroup2.value = value;
                                        })))
                              ]))
                    ]))));
  }

  onTapImgClose() {
    Get.back();
  }
}
