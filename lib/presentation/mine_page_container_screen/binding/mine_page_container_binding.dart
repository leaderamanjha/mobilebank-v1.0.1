import '../controller/mine_page_container_controller.dart';
import 'package:get/get.dart';

class MinePageContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MinePageContainerController());
  }
}
