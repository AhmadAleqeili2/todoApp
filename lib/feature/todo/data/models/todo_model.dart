import 'package:APP2323/feature/todo/domain/entities/todo.dart';
class TodoModel extends Todo {
  final String task;
  final int id;

  TodoModel({
    required this.task,
    required this.id,
}) : super(id: id, task: task);
List<String> get words => task.trim().split(RegExp(r'\s+'));

String getTaskTitle() {
  if (words.isEmpty) return '';
  final firstLine = words.take(4).join(' ');
  return firstLine;
}

String getTaskBodyPreview() {
  if (words.isEmpty) return '';

  final secondLine = words.length > 4 ? words.sublist(4).join(' ') : '';

  return '$secondLine';
}


  String getTaskFullBody() {
    return task;
  }
}
