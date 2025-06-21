import 'package:dartz/dartz.dart';
import 'package:APP2323/core/error/failures.dart';
import 'package:APP2323/core/usecases/usecase.dart';
import 'package:APP2323/feature/todo/domain/repositories/todo_repository.dart';
import 'package:equatable/equatable.dart';

class AddTodo implements UseCase<void, Params> {
  final TodoRepository todoRepository;

  AddTodo(this.todoRepository);

  @override
  Future<Either<Failure, void>> call(Params params) {
    return todoRepository.addTodo(params.task);
  }
}

class Params extends Equatable {
  final String task;

  Params({required this.task});

  @override
  List<Object> get props => [task];
}
