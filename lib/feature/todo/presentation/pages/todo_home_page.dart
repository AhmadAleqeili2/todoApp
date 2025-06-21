import 'package:APP2323/core/constants/app_strings.dart';
import 'package:APP2323/core/constants/routes_name.dart';
import 'package:APP2323/feature/todo/data/models/todo_model.dart';
import 'package:APP2323/feature/todo/presentation/blocs/todo/todo_bloc.dart';
import 'package:APP2323/feature/todo/presentation/blocs/todo_form/todo_form_bloc.dart';
import 'package:APP2323/feature/todo/presentation/widgets/todo_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocListener<TodoFormBloc, TodoFormState>(
      listener: (BuildContext context, TodoFormState todoFormState) {
        if (todoFormState is TodoFormAddSuccessState) {
          context.read<TodoBloc>().add(GetTodoListEvent());
        }
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.SettingPage);
                }),
          ],
        ),
        body: BlocBuilder<TodoBloc, TodoState>(
          builder: (BuildContext context, TodoState state) {
            if (state is TodoInitialState) {
              return Center(
                child: Text(AppStrings.InitialState),
              );
            } else if (state is TodoLoadingState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is TodoLoadSuccessState) {
              return Padding(
                padding: EdgeInsets.all(8),
                child: GridView.builder(
                  itemCount: state.todoList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          RouteNames.ViewTodoPage,
                          arguments: state.todoList[index] as TodoModel
                        );
                      },
                      child: TodoCard(
                        key: ValueKey(index),
                        todoModel: state.todoList[index] as TodoModel,
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                ),
              );
            } else if (state is TodoLoadFailedState) {
              return Center(
                child: Text(AppStrings.errorLoading),
              );
            } else {
              return Center(
                child: Text(AppStrings.unExpectedState),
              );
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_circle),
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.AddTodoPage);
          },
        ),
      ),
    );
  }
}
