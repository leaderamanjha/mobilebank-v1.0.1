import 'controller/currency_exchange_controller.dart';
import 'package:flutter/material.dart';
import 'package:mobilebank/core/app_export.dart';
import 'package:mobilebank/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mobilebank/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:mobilebank/widgets/app_bar/appbar_subtitle.dart';
import 'package:mobilebank/widgets/app_bar/custom_app_bar.dart';
import 'package:mobilebank/widgets/custom_button.dart';
import 'package:mobilebank/widgets/custom_drop_down.dart';
import 'package:mobilebank/widgets/custom_icon_button.dart';
import 'package:mobilebank/widgets/custom_text_form_field.dart';
import 'package:mobilebank/presentation/card_settings_bottomsheet/card_settings_bottomsheet.dart';
import 'package:mobilebank/presentation/card_settings_bottomsheet/controller/card_settings_controller.dart';

class CurrencyExchangeScreen extends GetWidget<CurrencyExchangeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 59,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 24, top: 7, bottom: 7),
                    onTap: () {
                      onTapArrowleft3();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_currency_exchan".tr),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgGlobe,
                      margin: getMargin(left: 24, top: 7, right: 24, bottom: 7))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 22, right: 24, bottom: 22),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: GestureDetector(
                              onTap: () {
                                onTapMastercard();
                              },
                              child: Container(
                                  margin: getMargin(top: 3),
                                  padding: getPadding(
                                      left: 20, top: 30, right: 20, bottom: 30),
                                  decoration: AppDecoration.outlineBlack90011
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder13),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 3),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgComputer23x36,
                                                      height:
                                                          getVerticalSize(23),
                                                      width: getHorizontalSize(
                                                          36)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .img1BlueGray400,
                                                      height:
                                                          getVerticalSize(4),
                                                      width:
                                                          getHorizontalSize(32),
                                                      margin: getMargin(
                                                          left: 19,
                                                          top: 10,
                                                          bottom: 9)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .img1BlueGray400,
                                                      height:
                                                          getVerticalSize(4),
                                                      width:
                                                          getHorizontalSize(32),
                                                      margin: getMargin(
                                                          left: 10,
                                                          top: 10,
                                                          bottom: 9)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          top: 3,
                                                          bottom: 4),
                                                      child: Text("lbl_4023".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium10Bluegray400)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 3,
                                                          bottom: 4),
                                                      child: Text("lbl_5534".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium10Bluegray400)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownGray90001,
                                                      height:
                                                          getVerticalSize(4),
                                                      width:
                                                          getHorizontalSize(8),
                                                      margin: getMargin(
                                                          top: 10, bottom: 9))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 21),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color:
                                                    ColorConstant.indigoA100)),
                                        Padding(
                                            padding:
                                                getPadding(top: 19, right: 2),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomTextFormField(
                                                      width: getHorizontalSize(
                                                          140),
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .priceController,
                                                      hintText:
                                                          "lbl_1_200_00".tr,
                                                      variant:
                                                          TextFormFieldVariant
                                                              .OutlineIndigoA100,
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .PoppinsMedium11Black900),
                                                  CustomDropDown(
                                                      width:
                                                          getHorizontalSize(70),
                                                      focusNode: FocusNode(),
                                                      icon: Container(
                                                          margin: getMargin(
                                                              left: 10,
                                                              right: 14),
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  color: ColorConstant
                                                                      .gray500,
                                                                  width:
                                                                      getHorizontalSize(
                                                                          1),
                                                                  strokeAlign:
                                                                      strokeAlignCenter)),
                                                          child: CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowdownGray500)),
                                                      hintText: "lbl_usd".tr,
                                                      variant: DropDownVariant
                                                          .OutlineGray300_2,
                                                      items: controller
                                                          .currencyExchangeModelObj
                                                          .value
                                                          .dropdownItemList
                                                          .value,
                                                      onChanged: (value) {
                                                        controller
                                                            .onSelected(value);
                                                      })
                                                ]))
                                      ])))),
                      CustomIconButton(
                          height: 50,
                          width: 50,
                          margin: getMargin(left: 129, top: 24),
                          variant: IconButtonVariant.FillDeeppurple50,
                          shape: IconButtonShape.CircleBorder25,
                          padding: IconButtonPadding.PaddingAll15,
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowdownIndigoA100)),
                      Container(
                          width: double.maxFinite,
                          child: GestureDetector(
                              onTap: () {
                                onTapVisa();
                              },
                              child: Container(
                                  margin: getMargin(top: 24),
                                  padding: getPadding(
                                      left: 21, top: 30, right: 21, bottom: 30),
                                  decoration: AppDecoration.outlineBlack900111
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder13),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 3, right: 1),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgFile,
                                                      height:
                                                          getVerticalSize(15),
                                                      width: getHorizontalSize(
                                                          47)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .img1BlueGray400,
                                                      height:
                                                          getVerticalSize(4),
                                                      width:
                                                          getHorizontalSize(32),
                                                      margin: getMargin(
                                                          left: 20,
                                                          top: 6,
                                                          bottom: 5)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .img1BlueGray400,
                                                      height:
                                                          getVerticalSize(4),
                                                      width:
                                                          getHorizontalSize(32),
                                                      margin: getMargin(
                                                          left: 10,
                                                          top: 6,
                                                          bottom: 5)),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 10),
                                                      child: Text("lbl_4023".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium10Bluegray400)),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 8),
                                                      child: Text("lbl_5534".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium10Bluegray400)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownGray90001,
                                                      height:
                                                          getVerticalSize(4),
                                                      width:
                                                          getHorizontalSize(8),
                                                      margin: getMargin(
                                                          top: 6, bottom: 5))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 25),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color:
                                                    ColorConstant.indigoA100)),
                                        Padding(
                                            padding: getPadding(top: 19),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomTextFormField(
                                                      width: getHorizontalSize(
                                                          140),
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .priceTwoController,
                                                      hintText:
                                                          "lbl_1_500_00".tr,
                                                      variant:
                                                          TextFormFieldVariant
                                                              .OutlineIndigoA100,
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .PoppinsMedium11Black900),
                                                  CustomDropDown(
                                                      width:
                                                          getHorizontalSize(70),
                                                      focusNode: FocusNode(),
                                                      icon: Container(
                                                          margin: getMargin(
                                                              left: 10,
                                                              right: 14),
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  color: ColorConstant
                                                                      .gray500,
                                                                  width:
                                                                      getHorizontalSize(
                                                                          1),
                                                                  strokeAlign:
                                                                      strokeAlignCenter)),
                                                          child: CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowdownGray500)),
                                                      hintText: "lbl_usd".tr,
                                                      variant: DropDownVariant
                                                          .OutlineGray300_2,
                                                      items: controller
                                                          .currencyExchangeModelObj
                                                          .value
                                                          .dropdownItemList1
                                                          .value,
                                                      onChanged: (value) {
                                                        controller
                                                            .onSelected1(value);
                                                      })
                                                ]))
                                      ])))),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Text("lbl_comment".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16Black900)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.group2960Controller,
                          hintText: "msg_enter_your_comm".tr,
                          margin: getMargin(top: 13),
                          variant: TextFormFieldVariant.OutlineGray200,
                          shape: TextFormFieldShape.RoundedBorder10,
                          padding: TextFormFieldPadding.PaddingT51,
                          fontStyle:
                              TextFormFieldFontStyle.PoppinsRegular11Gray500,
                          textInputAction: TextInputAction.done,
                          maxLines: 6)
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(50),
                text: "lbl_transfer_money".tr,
                margin: getMargin(left: 24, right: 24, bottom: 34))));
  }

  onTapMastercard() {
    Get.bottomSheet(
      CardSettingsBottomsheet(
        Get.put(
          CardSettingsController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapVisa() {
    Get.bottomSheet(
      CardSettingsBottomsheet(
        Get.put(
          CardSettingsController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onTapArrowleft3() {
    Get.back();
  }
}
