import 'package:get/get.dart';

class TextLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ru_RU': {
          'simple life': 'Сделай жизнь проще',
          'authentication': 'Авторизация',
          'enter email': 'Введите email',
          'enter password': 'Введите пароль',
          'enter': 'Войти',
          'no internet connection': 'Нет подключения к интернету',
          'catalog': 'Каталог',
          'purchase history': 'История покупок',
          'shopping cart is empty': 'Ваша корзина пуста',
          'total': 'Итого',
          'purchase': 'Оплатить',
          'order #': 'Заказ №',
        },
      };
}
