import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:antipoff_group_test/ui/screens/authentication_screen.dart';
import 'package:antipoff_group_test/ui/themes/app_themes.dart';
import 'package:antipoff_group_test/controllers/bindings.dart';
import 'package:antipoff_group_test/core/localization.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: TextLocalization(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('ru', 'RU'),
      home: const AuthenticationScreen(),
      initialBinding: AuthenticationBinding(),
      theme: defaultAppTheme(context),
    );
  }
}
