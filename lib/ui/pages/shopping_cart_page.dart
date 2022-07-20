import 'package:antipoff_group_test/controllers/product_controller.dart';
import 'package:antipoff_group_test/data/repository.dart';
import 'package:flutter/material.dart';
import 'package:antipoff_group_test/ui/views/shopping_cart_view.dart';
import 'package:get/get.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      builder: (productController) {
        return Repository.orderedProducts.isEmpty
            ? Center(
                child: Text(
                  'shopping cart is empty'.tr,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              )
            : const ShoppingCartView();
      },
    );
  }
}
