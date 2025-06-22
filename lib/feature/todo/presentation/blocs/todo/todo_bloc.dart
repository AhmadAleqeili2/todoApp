import 'package:bloc/bloc.dart';
import 'package:app2323/core/usecases/usecase.dart';
import 'package:app2323/feature/todo/domain/entities/todo.dart';
import 'package:app2323/feature/todo/domain/usecases/get_all_todo.dart';
import 'package:equatable/equatable.dart';

part 'todo_event.dart';

part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc({required this.getAllTodo}) : super(TodoInitialState()) {
    on<GetTodoListEvent>((event, emit) async {
      emit(TodoLoadingState());
      final todoListFailedOrSuccess = await getAllTodo(NoParams());
      todoListFailedOrSuccess.fold(
        (l) => emit(TodoLoadFailedState()),
        (r) => emit(TodoLoadSuccessState(todoList: r)),
      );
    });
  }

  final GetAllTodo getAllTodo;

  @override
  void onTransition(Transition<TodoEvent, TodoState> transition) {
    super.onTransition(transition);
  }
}
