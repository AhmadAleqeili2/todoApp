import 'package:app2323/core/presentation/some_went_wrong_page.dart';
import 'package:app2323/feature/todo/presentation/blocs/todo_form/todo_form_bloc.dart';
import 'package:app2323/feature/todo/presentation/widgets/add_todo/build_body.dart';
import 'package:app2323/feature/todo/presentation/widgets/add_todo/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
    return AddTodoPageState();
  }
}

class AddTodoPageState extends State<AddTodoPage> {
  final _formKey = GlobalKey<FormState>();
  String? _task;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          iconButton(context, _formKey, _task)
        ],
      ),
      body: BlocBuilder<TodoFormBloc, TodoFormState>(
        builder: (BuildContext context, TodoFormState todoFormState) {
          if (todoFormState is TodoFormInitialState) {
            return buildBody(context, _formKey, _task);
          } else if (todoFormState is TodoFormLoadingState) {
            return Center(child: CircularProgressIndicator());
          } else if (todoFormState is TodoFormAddSuccessState) {
            return buildBody(context, _formKey, _task);
          } else if (todoFormState is TodoFormAddFailState) {
            return buildBody(context, _formKey, _task);
          }
          return SomeThingWentWrongPage();
        },
      ),
    );
  }


}
