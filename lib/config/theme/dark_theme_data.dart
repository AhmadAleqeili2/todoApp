import 'package:APP2323/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

var darkThemeData = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: DarkThemeAppColors.scaffoldBackgroundColor,
  primaryColor: DarkThemeAppColors.primaryColor,
  primarySwatch: DarkThemeAppColors.primarySwatch,
  iconTheme: IconThemeData(color: DarkThemeAppColors.primaryColor),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: AppBarTheme(
    color: DarkThemeAppColors.appBarColor,
    iconTheme: IconThemeData(
      color: DarkThemeAppColors.appBarIconColor,
    ),
  ),
  primaryTextTheme: TextTheme(
    titleMedium: TextStyle(color: DarkThemeAppColors.textColor),
    titleLarge: TextStyle(color: DarkThemeAppColors.textColor),
    titleSmall: TextStyle(color: DarkThemeAppColors.textColor),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: DarkThemeAppColors.primaryColor, foregroundColor: DarkThemeAppColors.foreGroundColor), tabBarTheme: TabBarThemeData(indicatorColor: LightThemeAppColors.primaryColor),
);