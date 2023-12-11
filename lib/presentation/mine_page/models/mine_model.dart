import 'package:get/get.dart';
import 'minepage_item_model.dart';

class MineModel {
  Rx<List<MinepageItemModel>> minepageItemList =
      Rx(List.generate(4, (index) => MinepageItemModel()));
}
