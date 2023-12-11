import '../controller/transfer_request_controller.dart';
import 'package:get/get.dart';

class TransferRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransferRequestController());
  }
}
