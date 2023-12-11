import '../history_screen/widgets/listfire_item_widget.dart';
import '../history_screen/widgets/listvolume_item_widget.dart';
import '../history_screen/widgets/listwhatsapp_item_widget.dart';
import 'controller/history_controller.dart';
import 'models/listfire_item_model.dart';
import 'models/listvolume_item_model.dart';
import 'models/listwhatsapp_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mobilebank/core/app_export.dart';
import 'package:mobilebank/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mobilebank/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mobilebank/widgets/app_bar/appbar_subtitle.dart';
import 'package:mobilebank/widgets/app_bar/custom_app_bar.dart';

class HistoryScreen extends GetWidget<HistoryController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 59,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 24, top: 7, bottom: 7),
                    onTap: () {
                      onTapArrowleft6();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_history".tr),
                actions: [
                  AppbarIconbutton2(
                      svgPath: ImageConstant.imgSearchBlack9001,
                      margin: getMargin(left: 24, top: 7, right: 24, bottom: 7))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 11, right: 24, bottom: 11),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 15),
                          child: Text("lbl_today_25_june".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium10Gray500)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(15));
                              },
                              itemCount: controller.historyModelObj.value
                                  .listfireItemList.value.length,
                              itemBuilder: (context, index) {
                                ListfireItemModel model = controller
                                    .historyModelObj
                                    .value
                                    .listfireItemList
                                    .value[index];
                                return ListfireItemWidget(model);
                              }))),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Text("lbl_yesterday".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium10Gray500)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(15));
                              },
                              itemCount: controller.historyModelObj.value
                                  .listvolumeItemList.value.length,
                              itemBuilder: (context, index) {
                                ListvolumeItemModel model = controller
                                    .historyModelObj
                                    .value
                                    .listvolumeItemList
                                    .value[index];
                                return ListvolumeItemWidget(model);
                              }))),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("lbl_20_june_20222".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium10Gray500)),
                      Padding(
                          padding: getPadding(left: 1, top: 17),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(15));
                              },
                              itemCount: controller.historyModelObj.value
                                  .listwhatsappItemList.value.length,
                              itemBuilder: (context, index) {
                                ListwhatsappItemModel model = controller
                                    .historyModelObj
                                    .value
                                    .listwhatsappItemList
                                    .value[index];
                                return ListwhatsappItemWidget(model);
                              })))
                    ]))));
  }

  onTapArrowleft6() {
    Get.back();
  }
}
