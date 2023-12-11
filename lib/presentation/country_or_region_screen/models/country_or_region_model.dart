import 'package:get/get.dart';
import 'listunitedkingdom_item_model.dart';

class CountryOrRegionModel {
  Rx<List<ListunitedkingdomItemModel>> listunitedkingdomItemList =
      Rx(List.generate(7, (index) => ListunitedkingdomItemModel()));
}
