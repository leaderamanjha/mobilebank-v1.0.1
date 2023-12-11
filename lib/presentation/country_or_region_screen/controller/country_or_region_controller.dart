import 'package:mobilebank/core/app_export.dart';
import 'package:mobilebank/presentation/country_or_region_screen/models/country_or_region_model.dart';
import 'package:flutter/material.dart';

class CountryOrRegionController extends GetxController {
  TextEditingController frame225Controller = TextEditingController();

  Rx<CountryOrRegionModel> countryOrRegionModelObj = CountryOrRegionModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frame225Controller.dispose();
  }
}
