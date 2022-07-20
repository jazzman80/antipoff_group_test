import 'package:antipoff_group_test/controllers/product_controller.dart';
import 'package:antipoff_group_test/data/models/product.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 69.0,
        height: 58.0,
        decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.circular(8.0),
        ),
        alignment: Alignment.center,
        child: const Text(
          'Product Image',
          textAlign: TextAlign.center,
        ),
      ),
      title: Text.rich(
        TextSpan(children: [
          TextSpan(text: '${product.name}  '),
          const WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Icon(
              EvaIcons.star,
              color: Colors.amber,
              size: 17.0,
            ),
          ),
          TextSpan(text: ' ${product.rating}'),
        ]),
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      subtitle: Text(
        '${product.price.toStringAsFixed(2)} ₽',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      trailing: SizedBox(
        height: 40.0,
        width: 40.0,
        child: ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              const EdgeInsets.all(0.0),
            ),
          ),
          onPressed: () {
            ProductController.use.changeOrder(product);
          },
          child: GetBuilder<ProductController>(builder: (productController) {
            return Icon(
              product.isOrdered ? EvaIcons.trash : EvaIcons.shoppingCartOutline,
              size: 19.0,
            );
          }),
        ),
      ),
    );
  }
}
