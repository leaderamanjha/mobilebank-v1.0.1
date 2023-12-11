import 'controller/verify_email_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobilebank/core/app_export.dart';
import 'package:mobilebank/widgets/custom_button.dart';
import 'package:mobilebank/widgets/custom_icon_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyEmailScreen extends GetWidget<VerifyEmailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 10, right: 24, bottom: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 35,
                          width: 35,
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapBtnArrowleft();
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleftBlack900)),
                      CustomImageView(
                          svgPath: ImageConstant.imgIllustrationIndigoA100,
                          height: getVerticalSize(154),
                          width: getHorizontalSize(280),
                          margin: getMargin(top: 91)),
                      Padding(
                          padding: getPadding(top: 69),
                          child: Text("msg_verify_your_ema".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold20)),
                      Container(
                          width: getHorizontalSize(226),
                          margin: getMargin(top: 21),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_please_enter_42".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blueGray400,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: "lbl_xyz_gmail_com".tr,
                                    style: TextStyle(
                                        color: ColorConstant.indigoA100,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500))
                              ]),
                              textAlign: TextAlign.center)),
                      Padding(
                          padding: getPadding(left: 48, top: 25, right: 49),
                          child: Obx(() => PinCodeTextField(
                              appContext: context,
                              controller: controller.otpController.value,
                              length: 4,
                              obscureText: false,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              autoDismissKeyboard: true,
                              enableActiveFill: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (value) {},
                              textStyle: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(18),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400),
                              pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(50),
                                  fieldWidth: getHorizontalSize(50),
                                  shape: PinCodeFieldShape.circle,
                                  selectedFillColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  activeFillColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  inactiveFillColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  inactiveColor: ColorConstant.blueGray100,
                                  selectedColor: ColorConstant.blueGray100,
                                  activeColor: ColorConstant.blueGray100)))),
                      Padding(
                          padding: getPadding(top: 14),
                          child: Text("lbl_resend_code".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular14IndigoA100)),
                      SizedBox(
                          width: getHorizontalSize(92),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.indigoA100)),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_verify_code".tr,
                          margin: getMargin(top: 19, bottom: 5),
                          shape: ButtonShape.RoundedBorder13,
                          onTap: () {
                            onTapVerifycode();
                          })
                    ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }

  onTapVerifycode() {
    Get.toNamed(
      AppRoutes.minePageContainerScreen,
    );
  }
}
