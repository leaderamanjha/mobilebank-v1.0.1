import 'controller/mine_page_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:mobilebank/core/app_export.dart';
import 'package:mobilebank/presentation/mine_page/mine_page.dart';
import 'package:mobilebank/presentation/national_bank_page/national_bank_page.dart';
import 'package:mobilebank/presentation/statistics_tab_container_page/statistics_tab_container_page.dart';
import 'package:mobilebank/widgets/custom_bottom_app_bar.dart';
import 'package:mobilebank/widgets/custom_floating_button.dart';

class MinePageContainerScreen extends GetWidget<MinePageContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.minePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomAppBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            }),
            floatingActionButton: CustomFloatingButton(
                height: 50,
                width: 50,
                child: CustomImageView(
                    svgPath: ImageConstant.imgQrcodeWhiteA700,
                    height: getVerticalSize(25.0),
                    width: getHorizontalSize(25.0))),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Lock:
        return AppRoutes.minePage;
      case BottomBarEnum.Checkmarkgray500:
        return AppRoutes.statisticsTabContainerPage;
      case BottomBarEnum.Computergray500:
        return AppRoutes.nationalBankPage;
      case BottomBarEnum.Searchgray5002:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.minePage:
        return MinePage();
      case AppRoutes.statisticsTabContainerPage:
        return StatisticsTabContainerPage();
      case AppRoutes.nationalBankPage:
        return NationalBankPage();
      default:
        return DefaultWidget();
    }
  }
}
