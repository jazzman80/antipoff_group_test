import 'package:antipoff_group_test/controllers/catalog_data_controller.dart';
import 'package:antipoff_group_test/controllers/connection_controller.dart';
import 'package:antipoff_group_test/data/repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:antipoff_group_test/ui/views/category_view.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Repository.selectedCategory.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GetBuilder<ConnectionController>(
                builder: (connectionController) {
              return connectionController.isConnected
                  ? RefreshIndicator(
                      child: const CategoryView(),
                      onRefresh: () async =>
                          await CatalogDataController.use.loadData(),
                    )
                  : const CategoryView();
            }),
          ),
        ],
      ),
    );
  }
}
