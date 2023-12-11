import '../statistics_page/widgets/statistics_item_widget.dart';
import 'controller/statistics_controller.dart';
import 'models/statistics_item_model.dart';
import 'models/statistics_model.dart';
import 'package:flutter/material.dart';
import 'package:mobilebank/core/app_export.dart';

// ignore_for_file: must_be_immutable
class StatisticsPage extends StatelessWidget {
  StatisticsController controller =
      Get.put(StatisticsController(StatisticsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 24, top: 22, right: 24),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_recent_transfer".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsSemiBold18),
                                      GestureDetector(
                                          onTap: () {
                                            onTapTxtSeeAll();
                                          },
                                          child: Padding(
                                              padding:
                                                  getPadding(top: 5, bottom: 3),
                                              child: Text("lbl_see_all".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium12)))
                                    ]),
                                Padding(
                                    padding: getPadding(left: 1, top: 13),
                                    child: Obx(() => ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(15));
                                        },
                                        itemCount: controller
                                            .statisticsModelObj
                                            .value
                                            .statisticsItemList
                                            .value
                                            .length,
                                        itemBuilder: (context, index) {
                                          StatisticsItemModel model = controller
                                              .statisticsModelObj
                                              .value
                                              .statisticsItemList
                                              .value[index];
                                          return StatisticsItemWidget(model);
                                        })))
                              ]))
                    ])))));
  }

  onTapTxtSeeAll() {
    Get.toNamed(
      AppRoutes.historyScreen,
    );
  }
}
