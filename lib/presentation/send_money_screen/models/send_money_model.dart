import 'package:get/get.dart';
import 'listellipse311_item_model.dart';
import 'package:mobilebank/data/models/selectionPopupModel/selection_popup_model.dart';
import 'listone_item_model.dart';

class SendMoneyModel {
  Rx<List<Listellipse311ItemModel>> listellipse311ItemList =
      Rx(List.generate(2, (index) => Listellipse311ItemModel()));

  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<ListoneItemModel>> listoneItemList =
      Rx(List.generate(3, (index) => ListoneItemModel()));
}
