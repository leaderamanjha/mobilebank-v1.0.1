import '../controller/currency_settings_controller.dart';
import '../models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mobilebank/core/app_export.dart';
import 'package:mobilebank/widgets/custom_radio_button.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(this.listItemModelObj);

  ListItemModel listItemModelObj;

  var controller = Get.find<CurrencySettingsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 15,
        top: 16,
        right: 15,
        bottom: 16,
      ),
      decoration: AppDecoration.outlineBlack9000c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgMenu,
            height: getVerticalSize(
              20,
            ),
            width: getHorizontalSize(
              63,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 3,
              right: 4,
              bottom: 2,
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
                groupValue: listItemModelObj.radioGroup.value,
                margin: getMargin(
                  top: 3,
                  right: 4,
                  bottom: 2,
                ),
                variant: RadioVariant.OutlineBluegray100,
                shape: RadioShape.RoundedBorder7,
                isRightCheck: true,
                onChange: (value) {
                  listItemModelObj.radioGroup.value = value;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
