import '../controller/atm_location_controller.dart';
import 'package:get/get.dart';

class AtmLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AtmLocationController());
  }
}
