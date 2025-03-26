import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_with_bloc/model/todo_list.model.dart';

class TodoListCubit extends Cubit<List<TodoListModel>> {
  TodoListCubit() : super([]);

  void addTodoList({required String name}) {
    if (name.isEmpty) {
      addError('Name is required');
      return;
    }

    final todoList = TodoListModel(name: name, createdAt: DateTime.now());
    emit([...state, todoList]);
  }

  void removeTodoList({required int index}) {
    final todoList = state.elementAt(index);
    emit(state.where((element) => element != todoList).toList());
  }

  @override
  void onChange(Change<List<TodoListModel>> change) {
    print(change.toString());
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    log(error: error, stackTrace: stackTrace, "TodoListCubit");
    super.onError(error, stackTrace);
  }
}
