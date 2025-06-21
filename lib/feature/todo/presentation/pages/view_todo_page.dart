import 'package:APP2323/core/constants/app_strings.dart';
import 'package:APP2323/feature/todo/data/models/todo_model.dart';
import 'package:flutter/material.dart';

class ViewTodoPage extends StatelessWidget {

  final TodoModel todoModel;

  const ViewTodoPage({Key? key, required this.todoModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(title:Text(AppStrings.title) ,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SelectableText(
                todoModel.getTaskFullBody(),
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w400, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
