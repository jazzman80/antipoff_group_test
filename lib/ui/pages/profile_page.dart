import 'package:antipoff_group_test/controllers/order_controller.dart';
import 'package:antipoff_group_test/data/repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:antipoff_group_test/ui/widgets/order_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 42.0,
              foregroundImage: NetworkImage(Repository.user.avatarUrl),
            ),
            const SizedBox(width: 20.0),
            Text(
              '${Repository.user.firstName}\n${Repository.user.lastName}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
        const SizedBox(height: 60.0),
        Text(
          'purchase history'.tr,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Expanded(
          child: GetBuilder<OrderController>(
            builder: (orderController) {
              return ListView.builder(
                itemCount: Repository.ordersByData.length,
                itemBuilder: (context, index) {
                  return OrderTile(order: Repository.ordersByData[index]);
                },
              );
            },
          ),
        )
      ],
    );
  }
}
