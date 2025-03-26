import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_list_with_bloc/model/todo_list.model.dart';

part 'todo_list_event.dart';

class TodoListBloc extends Bloc<TodoListEvent, List<TodoListModel>> {
  TodoListBloc() : super([]) {
    on<AddTodoListEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<RemoveTodoListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
