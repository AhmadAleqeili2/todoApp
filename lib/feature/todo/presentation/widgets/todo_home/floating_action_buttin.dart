import 'package:app2323/core/constants/routes_name.dart';
import 'package:flutter/material.dart';

Widget cusFloatingActionButton(BuildContext context) {
  return FloatingActionButton(
          child: Icon(Icons.add_circle),
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.addTodoPage);
          },
        );
}