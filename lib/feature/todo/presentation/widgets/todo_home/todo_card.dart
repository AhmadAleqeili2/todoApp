import 'package:app2323/feature/todo/data/models/todo_model.dart';
import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final TodoModel todoModel;

  const TodoCard({Key? key, required this.todoModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              todoModel.getTaskTitle(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            todoModel.getTaskBodyPreview(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              
            ),
            
          ),
        ],
      ),
    );
  }
}
