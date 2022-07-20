import 'package:antipoff_group_test/controllers/catalog_data_controller.dart';
import 'package:antipoff_group_test/controllers/connection_controller.dart';
import 'package:antipoff_group_test/controllers/order_controller.dart';
import 'package:antipoff_group_test/controllers/pages_controller.dart';
import 'package:antipoff_group_test/controllers/product_controller.dart';
import 'package:antipoff_group_test/controllers/user_data_controller.dart';
import 'package:antipoff_group_test/controllers/validation_controller.dart';
import 'package:get/get.dart';

class AuthenticationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ValidationController>(() => ValidationController());
    Get.lazyPut<UserDataController>(() => UserDataController());
  }
}

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PagesController>(() => PagesController());
    Get.put(CatalogDataController(), permanent: true);
    Get.put(ProductController(), permanent: true);
    Get.put(OrderController(), permanent: true);
    Get.put(ConnectionController(), permanent: true);
  }
}
