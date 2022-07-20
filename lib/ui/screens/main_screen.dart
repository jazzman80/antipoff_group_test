import 'package:antipoff_group_test/controllers/connection_controller.dart';
import 'package:antipoff_group_test/controllers/pages_controller.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GetBuilder<ConnectionController>(
          builder: (connectionController) {
            return connectionController.isConnected
                ? const Text(
                    'Wish Swish',
                  )
                : Text(
                    'no internet connection'.tr,
                  );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20.0,
          left: 20.0,
          top: 30.0,
        ),
        child: GetBuilder<PagesController>(
          builder: (pagesController) {
            return pagesController.selectedPage;
          },
        ),
      ),
      bottomNavigationBar: GetBuilder<PagesController>(
        builder: (pagesController) => BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            pagesController.index = index;
          },
          currentIndex: pagesController.index,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(EvaIcons.homeOutline),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(EvaIcons.shoppingBagOutline),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(EvaIcons.personOutline),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
