import '../controller/country_or_region_controller.dart';
import '../models/listunitedkingdom_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mobilebank/core/app_export.dart';
import 'package:mobilebank/widgets/custom_radio_button.dart';

// ignore: must_be_immutable
class ListunitedkingdomItemWidget extends StatelessWidget {
  ListunitedkingdomItemWidget(this.listunitedkingdomItemModelObj);

  ListunitedkingdomItemModel listunitedkingdomItemModelObj;

  var controller = Get.find<CountryOrRegionController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 20,
        top: 15,
        right: 20,
        bottom: 15,
      ),
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder13,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnitedkingdom,
            height: getSize(
              25,
            ),
            width: getSize(
              25,
            ),
            margin: getMargin(
              top: 2,
              bottom: 1,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 19,
              top: 4,
            ),
            child: Obx(
              () => Text(
                listunitedkingdomItemModelObj.nameTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular16,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              top: 7,
              right: 2,
              bottom: 6,
            ),
            child: Obx(
              () => CustomRadioButton(
                width: getHorizontalSize(
                  15,
                ),
                iconSize: getHorizontalSize(
                  15,
                ),
                value: "",
                groupValue: listunitedkingdomItemModelObj.radioGroup.value,
                margin: getMargin(
                  top: 7,
                  right: 2,
                  bottom: 6,
                ),
                isRightCheck: true,
                onChange: (value) {
                  listunitedkingdomItemModelObj.radioGroup.value = value;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
