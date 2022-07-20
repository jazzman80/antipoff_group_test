import 'package:antipoff_group_test/data/models/order.dart';
import 'package:antipoff_group_test/data/models/product.dart';
import 'package:antipoff_group_test/data/models/user.dart';
import 'package:antipoff_group_test/data/repository.dart';
import 'package:get/get.dart';
import 'package:antipoff_group_test/data/data_provider.dart';

class UserDataController extends GetxController {
  static UserDataController get use => Get.find();

  DataProvider dataProvider = DataProvider();

  Future<void> loadData() async {
    //тестовый вариант загрузки данных пользователя
    //в финальной версии на сервер отправляется запрос через
    //dataProvider
    //
    // Response userResponse = await dataProvider.userResponse();
    // Repository.user = jsonDecode(userResponse.body);
    // Response ordersResponse = await dataProvider.ordersResponse();
    // Repository.orders = (jsonDecode(ordersResponse.body) as List)
    //     .map((i) => Order.fromJson(i))
    //     .toList();

    await Future.delayed(
      const Duration(seconds: 3),
    );
    Repository.user = User(
      "0",
      "Альберт",
      "Эйнштейн",
      "https://storage.yandexcloud.net/wr4img/372132_24_i_214.jpg",
    );
    Repository.orders = [
      Order(
        '3',
        12453,
        1234.55,
        DateTime(2022, 2, 5, 17, 30, 53),
        [
          Product('0', '2', 'Продукт', 3.5, 200.0),
          Product('0', '2', 'Продукт', 3.5, 200.0),
          Product('0', '2', 'Продукт', 3.5, 200.0),
          Product('0', '2', 'Продукт', 3.5, 200.0),
        ],
      ),
      Order(
        '3',
        12453,
        234.55,
        DateTime(2022, 1, 20, 17, 30, 53),
        [
          Product('0', '2', 'Продукт', 3.5, 200.0),
          Product('0', '2', 'Продукт', 3.5, 200.0),
        ],
      ),
      Order(
        '3',
        12453,
        3434.55,
        DateTime(2022, 1, 15, 17, 30, 53),
        [
          Product('0', '2', 'Продукт', 3.5, 200.0),
          Product('0', '2', 'Продукт', 3.5, 200.0),
          Product('0', '2', 'Продукт', 3.5, 200.0),
          Product('0', '2', 'Продукт', 3.5, 200.0),
          Product('0', '2', 'Продукт', 3.5, 200.0),
          Product('0', '2', 'Продукт', 3.5, 200.0),
        ],
      ),
    ];
    update();
  }
}
