import 'package:antipoff_group_test/data/models/order.dart';
import 'package:antipoff_group_test/data/models/product.dart';
import 'package:antipoff_group_test/data/models/product_category.dart';
import 'package:antipoff_group_test/data/models/user.dart';

class Repository {
  static String email = '';
  static String password = '';
  static User user = User.init();

  static late ProductCategory selectedCategory;
  static List<ProductCategory> categories = [];

  static List<Product> products = [];
  static List<Product> get selectedCategoryProducts => products
      .where((product) => product.categoryId == selectedCategory.id)
      .toList();
  static List<Product> get orderedProducts =>
      products.where((product) => product.isOrdered == true).toList();
  static double get totalPrice => orderedProducts.fold<double>(
      0.0, (double sum, Product product) => sum + product.price);

  static List<Order> orders = [];
  static List<Order> ordersByData = orders.reversed.toList();
}
