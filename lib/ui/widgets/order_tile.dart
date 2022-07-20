import 'package:antipoff_group_test/data/models/order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderTile extends StatelessWidget {
  const OrderTile({Key? key, required this.order}) : super(key: key);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Text(
              'order #'.tr + order.number.toString(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            trailing: Card(
              color: Colors.grey[100],
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1.0,
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(6.0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${order.totalPrice.toStringAsFixed(0)} ₽',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: order.products.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text(
                  order.products[index].name,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                trailing: Text(
                  '${order.products[index].price.toStringAsFixed(0)} ₽',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
