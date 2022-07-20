import 'package:antipoff_group_test/controllers/catalog_data_controller.dart';
import 'package:antipoff_group_test/controllers/connection_controller.dart';
import 'package:antipoff_group_test/ui/views/catalog_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'catalog'.tr,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Expanded(
          child: GetBuilder<ConnectionController>(
            builder: (connectionController) {
              return connectionController.isConnected
                  ? RefreshIndicator(
                      onRefresh: () async =>
                          await CatalogDataController.use.loadData(),
                      child: const CatalogView(),
                    )
                  : const CatalogView();
            },
          ),
        ),
      ],
    );
  }
}
