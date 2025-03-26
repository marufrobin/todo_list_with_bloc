import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_list_with_bloc/model/todo_list.model.dart';

part 'todo_list_event.dart';

class TodoListBloc extends Bloc<TodoListEvent, List<TodoListModel>> {
  TodoListBloc() : super([]) {
    on<AddTodoListEvent>((event, emit) {
      emit([
        ...state,
        TodoListModel(name: event.title, createdAt: DateTime.now()),
      ]);
    });

    on<RemoveTodoListEvent>((event, emit) {
      final todoList = state.elementAt(event.index);
      emit(state.where((element) => element != todoList).toList());
    });
  }
}
