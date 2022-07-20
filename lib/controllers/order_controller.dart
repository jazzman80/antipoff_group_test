import 'dart:math';
import 'package:antipoff_group_test/controllers/product_controller.dart';
import 'package:antipoff_group_test/data/models/order.dart';
import 'package:antipoff_group_test/data/repository.dart';
import 'package:get/get.dart';

class OrderController extends GetxController {
  static OrderController get use => Get.find();

  Future<void> checkOut() async {
    Repository.orders.add(
      Order(
        Random().nextInt(10000).toString(),
        Random().nextInt(10000),
        Repository.totalPrice,
        DateTime.now(),
        Repository.orderedProducts,
      ),
    );
    ProductController.use.clearOrderedList();
    update();
  }
}
