import 'package:APP2323/core/constants/app_colors.dart';
import 'package:flutter/material.dart';


var lightThemeData = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: LightThemeAppColors.scaffoldBackgroundColor,
  primaryColor: LightThemeAppColors.primaryColor,
  primarySwatch: LightThemeAppColors.primarySwatch,
  iconTheme: IconThemeData(color: LightThemeAppColors.primaryColor),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: AppBarTheme(
    color: LightThemeAppColors.appBarColor,
    iconTheme: IconThemeData(
      color: LightThemeAppColors.appBarIconColor,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: LightThemeAppColors.primaryColor, foregroundColor: LightThemeAppColors.foreGroundColor), tabBarTheme: TabBarThemeData(indicatorColor: LightThemeAppColors.primaryColor),
);
