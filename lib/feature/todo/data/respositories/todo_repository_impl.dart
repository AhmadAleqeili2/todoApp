import 'package:dartz/dartz.dart';
import 'package:app2323/core/error/exceptions.dart';
import 'package:app2323/core/error/failures.dart';
import 'package:app2323/feature/todo/data/datasources/todo_local_data_source.dart';
import 'package:app2323/feature/todo/domain/entities/todo.dart';
import 'package:app2323/feature/todo/domain/repositories/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoLocalDataSource todoLocalDataSource;

  TodoRepositoryImpl({required this.todoLocalDataSource});

  @override
  Future<Either<Failure, Todo>> getTodo(int id) async {
    try {
      return Right(await todoLocalDataSource.getTodo(id));
    } on DataBaseException {
      return Left(DataBaseFailure());
    }
  }

  @override
  Future<Either<Failure, List<Todo>>> getAllTodo() async {
    try {
      return Right(await todoLocalDataSource.getAllTodo());
    } on DataBaseException {
      return Left(DataBaseFailure());
    }
  }

  @override
  Future<Either<Failure, Todo>> addTodo(String task) async {
    try {
      final Todo todo = await todoLocalDataSource.addTodo(task);
      return Right(todo);
    } on DataBaseException {
      return Left(DataBaseFailure());
    }
  }
}
