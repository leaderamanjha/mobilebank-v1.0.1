import 'package:get/get.dart';
import 'listfire_item_model.dart';
import 'listvolume_item_model.dart';
import 'listwhatsapp_item_model.dart';

class HistoryModel {
  Rx<List<ListfireItemModel>> listfireItemList =
      Rx(List.generate(4, (index) => ListfireItemModel()));

  Rx<List<ListvolumeItemModel>> listvolumeItemList =
      Rx(List.generate(3, (index) => ListvolumeItemModel()));

  Rx<List<ListwhatsappItemModel>> listwhatsappItemList =
      Rx(List.generate(2, (index) => ListwhatsappItemModel()));
}
