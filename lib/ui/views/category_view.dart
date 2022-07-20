import 'package:antipoff_group_test/controllers/catalog_data_controller.dart';
import 'package:antipoff_group_test/data/repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:antipoff_group_test/ui/widgets/product_listtile.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CatalogDataController>(
      builder: (catalogDataController) => ListView.builder(
        itemCount: Repository.selectedCategoryProducts.length,
        itemBuilder: (context, index) {
          return ProductTile(
            product: Repository.selectedCategoryProducts[index],
          );
        },
      ),
    );
  }
}
