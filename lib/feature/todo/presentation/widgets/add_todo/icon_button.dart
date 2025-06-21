import 'package:APP2323/feature/todo/presentation/blocs/todo_form/todo_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget iconButton (BuildContext context, GlobalKey<FormState> _formKey, String? _task) {
  return IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              if (_formKey.currentState?.validate() == true && _task != null) {
                _formKey.currentState?.save();
                BlocProvider.of<TodoFormBloc>(context).add(
                  TodoFormAddEvent(
                    task: _task,
                  ),
                );
                WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.of(context).pop();
            });
              }
            },
          );
}