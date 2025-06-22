import 'package:app2323/feature/todo/presentation/blocs/todo_form/todo_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget iconButton (BuildContext context, GlobalKey<FormState> formKey, TextEditingController? task) {
  return IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              if (formKey.currentState?.validate() == true && task != null) {
                formKey.currentState?.save();
                BlocProvider.of<TodoFormBloc>(context).add(
                  TodoFormAddEvent(
                    task: task.text,
                  ),
                );
                WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.of(context).pop();
            });
              }
            },
          );
}