import 'package:antipoff_group_test/data/models/product.dart';
import 'package:antipoff_group_test/data/repository.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  static ProductController get use => Get.find();

  void changeOrder(Product product) {
    product.isOrdered = !product.isOrdered;
    update();
  }

  void clearOrderedList() {
    for (Product product in Repository.products) {
      product.isOrdered = false;
    }
    update();
  }
}
