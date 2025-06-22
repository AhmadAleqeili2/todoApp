import 'package:dartz/dartz.dart';
import 'package:app2323/core/error/failures.dart';
import 'package:app2323/core/usecases/usecase.dart';
import 'package:app2323/feature/todo/domain/entities/todo.dart';
import 'package:app2323/feature/todo/domain/repositories/todo_repository.dart';
import 'package:equatable/equatable.dart';

class GetTodo implements UseCase<Todo, Params> {
  final TodoRepository todoRepository;

  GetTodo(this.todoRepository);

  @override
  Future<Either<Failure, Todo>> call(Params params) async {
    return await todoRepository.getTodo(params.id);
  }
}

class Params extends Equatable {
  final int id;

  const Params({required this.id});

  @override
  List<Object> get props => [id];
}
