import 'package:app2323/feature/todo/domain/entities/todo.dart';
class TodoModel extends Todo {
  const TodoModel({
    required String task,
    required int id,
}) : super(id: id, task: task);

}
