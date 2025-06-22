import 'package:flutter/material.dart';
import 'package:app2323/core/constants/app_colors.dart';

final darkThemeData = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: DarkThemeAppColors.scaffoldBackgroundColor,
  primaryColor: DarkThemeAppColors.primaryColor,

  colorScheme: ColorScheme.dark(
    primary: DarkThemeAppColors.primaryColor,
    secondary: DarkThemeAppColors.secondaryColor,
    surface: DarkThemeAppColors.surfaceColor,
    onPrimary: DarkThemeAppColors.foreGroundColor,
    onSecondary: DarkThemeAppColors.textColor,
    onSurface: DarkThemeAppColors.textColor,
  ),

  iconTheme: IconThemeData(color: DarkThemeAppColors.primaryColor),

  visualDensity: VisualDensity.adaptivePlatformDensity,

  appBarTheme: AppBarTheme(
    backgroundColor: DarkThemeAppColors.appBarColor,
    iconTheme: IconThemeData(
      color: DarkThemeAppColors.appBarIconColor,
    ),
    titleTextStyle: TextStyle(
      color: DarkThemeAppColors.textColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),

  textTheme: TextTheme(
    titleLarge: TextStyle(color: DarkThemeAppColors.textColor),
    titleMedium: TextStyle(color: DarkThemeAppColors.textColor),
    titleSmall: TextStyle(color: DarkThemeAppColors.textColor),
    bodyLarge: TextStyle(color: DarkThemeAppColors.textColor),
    bodyMedium: TextStyle(color: DarkThemeAppColors.textColor),
  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: DarkThemeAppColors.primaryColor,
    foregroundColor: DarkThemeAppColors.floatingActionButtonFG,
  ),

  tabBarTheme: TabBarThemeData(
    indicatorColor: DarkThemeAppColors.primaryColor,
    labelColor: DarkThemeAppColors.primaryColor,
    unselectedLabelColor: DarkThemeAppColors.textColor.withAlpha(255 * 6 ~/ 10),
  ),
);
