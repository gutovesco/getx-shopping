import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_shop/controllers/shopping_controller.dart';

class AllBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShoppingController>(() => ShoppingController());
  }
}
