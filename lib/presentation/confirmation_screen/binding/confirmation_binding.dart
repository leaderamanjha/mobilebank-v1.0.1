import '../controller/confirmation_controller.dart';
import 'package:get/get.dart';

class ConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmationController());
  }
}
