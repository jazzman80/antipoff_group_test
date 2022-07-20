import 'package:flutter/material.dart';
import 'package:material_color_gen/material_color_gen.dart';

final defaultPrimaryColor = const Color(0xFF0C40A6).toMaterialColor();

ThemeData defaultAppTheme(BuildContext context) {
  return ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: defaultPrimaryColor,
    ),
    typography:
        Typography.material2021(platform: TargetPlatform.android).copyWith(
      black: TextTheme(
          titleLarge: TextStyle(
            fontSize: 18.0,
            color: Colors.grey[900],
            fontWeight: FontWeight.w500,
          ),
          titleMedium: TextStyle(
            fontSize: 16.0,
            color: Colors.grey[850],
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: TextStyle(
            fontSize: 16.0,
            color: Colors.grey[900],
          ),
          bodyMedium: TextStyle(
            fontSize: 14.0,
            color: Colors.grey[900],
          )),
    ),
  ).copyWith(
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 0.0,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(vertical: 21.0),
        ),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(size: 28.0),
      unselectedIconTheme: IconThemeData(size: 28.0),
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: Theme.of(context)
          .textTheme
          .bodyLarge
          ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
    ),
  );
}
