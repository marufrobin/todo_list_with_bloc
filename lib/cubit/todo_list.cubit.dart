import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_with_bloc/model/todo_list.model.dart';

class TodoListCubit extends Cubit<List<TodoListModel>> {
  TodoListCubit() : super([]);

  void addTodoList({required String name}) {
    final todoList = TodoListModel(name: name, createdAt: DateTime.now());
    emit([...state, todoList]);
  }

  @override
  void onChange(Change<List<TodoListModel>> change) {
    print(change);
    super.onChange(change);
  }
}
