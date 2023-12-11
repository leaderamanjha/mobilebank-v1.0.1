import 'controller/confirmation_controller.dart';
import 'package:flutter/material.dart';
import 'package:mobilebank/core/app_export.dart';
import 'package:mobilebank/widgets/custom_button.dart';

class ConfirmationScreen extends GetWidget<ConfirmationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, right: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(right: 85),
                          child: Text("lbl_confirmation".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold18)),
                      CustomImageView(
                          svgPath: ImageConstant.imgIllustrationGray10001,
                          height: getVerticalSize(200),
                          width: getHorizontalSize(179),
                          margin: getMargin(top: 70, right: 62)),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_back_home".tr,
                          margin: getMargin(top: 70, bottom: 5),
                          onTap: () {
                            onTapBackhome();
                          })
                    ]))));
  }

  onTapBackhome() {
    Get.toNamed(
      AppRoutes.minePageContainerScreen,
    );
  }
}
