import '../controller/login_page_tab_container_controller.dart';
import 'package:get/get.dart';

class LoginPageTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginPageTabContainerController());
  }
}
