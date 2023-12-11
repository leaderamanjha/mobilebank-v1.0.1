import '../controller/transfer_amount_controller.dart';
import 'package:get/get.dart';

class TransferAmountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransferAmountController());
  }
}
