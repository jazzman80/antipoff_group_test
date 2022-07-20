import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:antipoff_group_test/ui/pages/home_page.dart';
import 'package:antipoff_group_test/ui/pages/profile_page.dart';
import 'package:antipoff_group_test/ui/pages/shopping_cart_page.dart';

class PagesController extends GetxController {
  int _index = 0;
  List<Widget> _pageList = [
    HomePage(),
    ShoppingCartPage(),
    ProfilePage(),
  ];

  get selectedPage {
    return _pageList[_index];
  }

  set index(newIndex) {
    _index = newIndex;
    update();
  }

  get index {
    return _index;
  }
}
