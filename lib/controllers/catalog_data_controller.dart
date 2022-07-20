import 'package:antipoff_group_test/data/models/product.dart';
import 'package:antipoff_group_test/data/models/product_category.dart';
import 'package:antipoff_group_test/data/repository.dart';
import 'package:get/get.dart';
import 'package:antipoff_group_test/data/data_provider.dart';

class CatalogDataController extends GetxController {
  static CatalogDataController get use => Get.find();

  DataProvider dataProvider = DataProvider();

  @override
  void onInit() {
    loadData();
    super.onInit();
  }

  Future<void> loadData() async {
    //тестовый вариант загрузки каталога продуктов
    //в финальной версии на сервер отправляется запрос через
    //dataProvider
    //
    // Response categoriesResponse = await dataProvider.productsCategoriesResponse();
    // Repository.categories = (jsonDecode(categoriesResponse.body) as List)
    //      .map((i) => ProductCategory.fromJson(i))
    //      .toList();
    // Response productsResponse = await dataProvider.productsResponse();
    // Repository.products = (jsonDecode(productsResponse.body) as List)
    //     .map((i) => Product.fromJson(i))
    //     .toList();

    await Future.delayed(
      Duration(seconds: 3),
    );
    Repository.categories = [
      ProductCategory('0', 'Овощи', 80),
      ProductCategory('1', 'Молочка', 20),
      ProductCategory('2', 'Бакалея', 50),
      ProductCategory('3', 'Снэки', 120),
    ];
    Repository.products = [
      Product('0', '0', 'Огурцы', 1.2, 99.99),
      Product('0', '0', 'Помидоры', 3.0, 99.99),
      Product('0', '0', 'Кабачки', 9.5, 99.99),
      Product('0', '0', 'Лук', 2.2, 99.99),
      Product('0', '1', 'Молоко', 3.0, 99.99),
      Product('0', '1', 'Кефир', 3.6, 99.99),
      Product('0', '1', 'Сметана', 5.2, 99.99),
      Product('0', '1', 'Ряженка', 5.8, 99.99),
      Product('0', '2', 'Соль', 3.0, 99.99),
      Product('0', '2', 'Подсолнечное масло', 3.7, 99.99),
      Product('0', '3', 'Сухарики', 2.8, 99.99),
      Product('0', '3', 'Чипсы', 5.5, 99.99),
    ];
    update();
  }
}
