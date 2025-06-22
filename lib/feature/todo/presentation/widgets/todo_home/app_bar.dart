import 'package:app2323/core/constants/routes_name.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget appBar(BuildContext context) {
  return AppBar(
          actions: [
            IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.settingPage);
                }),
          ],
        );
}