import '../controller/send_money_controller.dart';
import '../models/listone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mobilebank/core/app_export.dart';

// ignore: must_be_immutable
class ListoneItemWidget extends StatelessWidget {
  ListoneItemWidget(this.listoneItemModelObj);

  ListoneItemModel listoneItemModelObj;

  var controller = Get.find<SendMoneyController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => Text(
            listoneItemModelObj.oneTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsMedium20,
          ),
        ),
        Obx(
          () => Text(
            listoneItemModelObj.twoTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsMedium20,
          ),
        ),
        Obx(
          () => Text(
            listoneItemModelObj.threeTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsMedium20,
          ),
        ),
      ],
    );
  }
}
