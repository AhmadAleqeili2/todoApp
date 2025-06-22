import 'package:app2323/core/constants/routes_name.dart';
import 'package:app2323/feature/setting/presentation/pages/setting_page.dart';
import 'package:app2323/feature/todo/data/models/todo_model.dart';
import 'package:app2323/feature/todo/presentation/pages/add_todo_page.dart';
import 'package:app2323/feature/todo/presentation/pages/todo_home_page.dart';
import 'package:app2323/feature/todo/presentation/pages/view_todo_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.viewTodoPage:
        return MaterialPageRoute(builder: (_) =>  ViewTodoPage(todoModel: settings.arguments as TodoModel));
      case RouteNames.todoHomePage:
        return MaterialPageRoute(builder: (_) =>  TodoHomePage());
      case RouteNames.addTodoPage:
        return MaterialPageRoute(builder: (_) =>  AddTodoPage());
      case RouteNames.settingPage:
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
