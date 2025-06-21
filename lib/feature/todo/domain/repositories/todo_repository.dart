import 'package:dartz/dartz.dart';
import 'package:APP2323/core/error/failures.dart';
import 'package:APP2323/feature/todo/domain/entities/todo.dart';

abstract class TodoRepository {
  Future<Either<Failure, Todo>> getTodo(int id);

  Future<Either<Failure, List<Todo>>> getAllTodo();

  Future<Either<Failure, Todo>> addTodo(String task);
}
