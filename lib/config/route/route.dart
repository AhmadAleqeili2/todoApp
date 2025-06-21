import 'package:APP2323/core/constants/routes_name.dart';
import 'package:APP2323/feature/setting/presentation/pages/setting_page.dart';
import 'package:APP2323/feature/todo/data/models/todo_model.dart';
import 'package:APP2323/feature/todo/presentation/pages/add_todo_page.dart';
import 'package:APP2323/feature/todo/presentation/pages/todo_home_page.dart';
import 'package:APP2323/feature/todo/presentation/pages/view_todo_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.ViewTodoPage:
        return MaterialPageRoute(builder: (_) =>  ViewTodoPage(todoModel: settings.arguments as TodoModel));
      case RouteNames.TodoHomePage:
        return MaterialPageRoute(builder: (_) =>  TodoHomePage());
      case RouteNames.AddTodoPage:
        return MaterialPageRoute(builder: (_) =>  AddTodoPage());
      case RouteNames.SettingPage:
        return MaterialPageRoute(builder: (_) =>  SettingPage());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
}
