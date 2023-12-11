import 'package:mobilebank/core/app_export.dart';
import 'package:mobilebank/presentation/confirmation_screen/models/confirmation_model.dart';

class ConfirmationController extends GetxController {
  Rx<ConfirmationModel> confirmationModelObj = ConfirmationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
