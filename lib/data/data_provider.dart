import 'package:antipoff_group_test/data/repository.dart';
import 'package:get/get.dart';

class DataProvider extends GetConnect {
  Future<Response> userResponse() async {
    return await get(
        'apiurl/login?email=${Repository.email}&password=${Repository.password}');
  }

  Future<Response> ordersResponse() async {
    return await get(
        'apiurl/orders?email=${Repository.email}&password=${Repository.password}');
  }

  Future<Response> productsCategoriesResponse() async {
    return await get('apiurl/categories');
  }

  Future<Response> productsResponse() async {
    return await get('apiurl/products');
  }
}
