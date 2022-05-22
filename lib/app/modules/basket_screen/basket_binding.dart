import 'package:get/get.dart';

import './basket_controller.dart';

class BasketBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BasketController>(() => BasketController());
  }
}
