
import 'package:bloc/bloc.dart';
import 'package:app2323/feature/todo/domain/usecases/add_todo.dart';
import 'package:equatable/equatable.dart';

part 'todo_form_event.dart';

part 'todo_form_state.dart';

class TodoFormBloc extends Bloc<TodoFormEvent, TodoFormState> {
  TodoFormBloc({required this.addTodo}) : super(TodoFormInitialState()) {
    on<TodoFormAddEvent>((event, emit) async {
      emit(TodoFormLoadingState());
      final todoAddedFailedOrSuccess = await addTodo(Params(task: event.task));
      emit(todoAddedFailedOrSuccess.fold(
        (l) => TodoFormAddFailState(),
        (r) => TodoFormAddSuccessState(),
      ));
    });
  }

  final AddTodo addTodo;

  @override
  void onTransition(Transition<TodoFormEvent, TodoFormState> transition) {
    super.onTransition(transition);
  }
}
