import 'package:get/get.dart';
import 'nationalbank_item_model.dart';

class NationalBankModel {
  Rx<List<NationalbankItemModel>> nationalbankItemList =
      Rx(List.generate(2, (index) => NationalbankItemModel()));
}
