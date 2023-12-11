import 'package:mobilebank/core/app_export.dart';
import 'package:mobilebank/presentation/transfer_request_screen/models/transfer_request_model.dart';
import 'package:flutter/material.dart';

class TransferRequestController extends GetxController {
  TextEditingController searchbarController = TextEditingController();

  Rx<TransferRequestModel> transferRequestModelObj = TransferRequestModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchbarController.dispose();
  }
}
