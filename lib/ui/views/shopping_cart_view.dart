import 'package:antipoff_group_test/controllers/order_controller.dart';
import 'package:antipoff_group_test/controllers/product_controller.dart';
import 'package:antipoff_group_test/data/repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:antipoff_group_test/ui/widgets/product_listtile.dart';

class ShoppingCartView extends StatelessWidget {
  const ShoppingCartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      builder: (productController) => Column(
        children: [
          ListTile(
            leading: Text(
              'total'.tr,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            trailing: Text(
              '${Repository.totalPrice.toStringAsFixed(2)} ₽',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Repository.orderedProducts.length,
              itemBuilder: (context, index) {
                return ProductTile(
                  product: Repository.orderedProducts[index],
                );
              },
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () async {
                await OrderController.use.checkOut();
              },
              child: Text('purchase'.tr),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
