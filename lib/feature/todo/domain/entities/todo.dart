import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final String task;
  final int id;

  const Todo({required this.task, required this.id});

  @override
  List<Object> get props => [task, id];
  List<String> get words => task.trim().split(RegExp(r'\s+'));

String getTaskTitle() {
  if (words.isEmpty) return '';
  final firstLine = words.take(4).join(' ');
  return firstLine;
}

String getTaskBodyPreview() {
  if (words.isEmpty) return '';

  final secondLine = words.length > 4 ? words.sublist(4).join(' ') : '';

  return secondLine;
}


  String getTaskFullBody() {
    return task;
  }

}
