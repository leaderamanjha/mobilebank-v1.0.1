import '../controller/verify_email_controller.dart';
import 'package:get/get.dart';

class VerifyEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyEmailController());
  }
}
