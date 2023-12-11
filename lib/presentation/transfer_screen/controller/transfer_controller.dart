import 'package:mobilebank/core/app_export.dart';
import 'package:mobilebank/presentation/transfer_screen/models/transfer_model.dart';

class TransferController extends GetxController {
  Rx<TransferModel> transferModelObj = TransferModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
