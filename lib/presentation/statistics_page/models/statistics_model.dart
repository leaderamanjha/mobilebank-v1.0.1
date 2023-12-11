import 'package:get/get.dart';
import 'statistics_item_model.dart';

class StatisticsModel {
  Rx<List<StatisticsItemModel>> statisticsItemList =
      Rx(List.generate(2, (index) => StatisticsItemModel()));
}
