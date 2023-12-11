import '../controller/country_or_region_controller.dart';
import 'package:get/get.dart';

class CountryOrRegionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CountryOrRegionController());
  }
}
