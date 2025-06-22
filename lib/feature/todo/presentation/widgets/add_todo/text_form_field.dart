import 'package:app2323/core/constants/app_strings.dart';
import 'package:flutter/material.dart';

Widget textFormField (TextEditingController task){
  return TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
                scrollPadding: EdgeInsets.all(20.0),
                keyboardType: TextInputType.multiline,
                maxLines: 99999,
                autofocus: true,
                validator: (value) {
                  if (value?.isEmpty == true) {
                    return AppStrings.taskRequired;
                  }
                  return null;
                },
                onChanged: (value) {
                  task.text = value;
                },
              );
}