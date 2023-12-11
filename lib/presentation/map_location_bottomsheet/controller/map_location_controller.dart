import 'package:mobilebank/core/app_export.dart';
import 'package:mobilebank/presentation/map_location_bottomsheet/models/map_location_model.dart';

class MapLocationController extends GetxController {
  Rx<MapLocationModel> mapLocationModelObj = MapLocationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
