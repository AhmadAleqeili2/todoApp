import 'package:collection/collection.dart';
import 'package:APP2323/core/error/exceptions.dart';
import 'package:APP2323/feature/todo/data/models/todo_model.dart';
import 'package:APP2323/feature/todo/domain/entities/todo.dart';

abstract class TodoLocalDataSource {
  Future<TodoModel> getTodo(int id);

  Future<List<TodoModel>> getAllTodo();

  Future<Todo> addTodo(String task);
}

class TodoLocalDataSourceImpl implements TodoLocalDataSource {
  TodoLocalDataSourceImpl();

  List<TodoModel> todoModelList = [
    TodoModel(
        task:
            'Learn Flutter and Dart to build beautiful mobile applications',
        id: 0),
    TodoModel(task: 'Practice state management for scalable Flutter apps', id: 1),
    TodoModel(task: 'Explore advanced Flutter animations for engaging UIs', id: 2),
    TodoModel(task: 'Implement local and remote data persistence in Flutter apps', id: 3),
  ];

  @override
  Future<TodoModel> getTodo(int id) {
    final TodoModel? todoModel =
        todoModelList.firstWhereOrNull((element) => element.id == id);
    if (todoModel != null) {
      return Future.delayed(const Duration(seconds: 1), () => todoModel);
    } else {
      throw DataBaseException();
    }
  }

  @override
  Future<List<TodoModel>> getAllTodo() {
    return Future.delayed(const Duration(seconds: 1), () => todoModelList);
  }

  @override
  Future<Todo> addTodo(String task) {
    return Future.delayed(const Duration(seconds: 1), () {
      final todo = TodoModel(task: task, id: todoModelList.length);
      todoModelList.add(todo);
      return todo;
    });
  }
}
