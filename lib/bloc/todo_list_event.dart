part of 'todo_list_bloc.dart';

@immutable
sealed class TodoListEvent {}

class AddTodoListEvent extends TodoListEvent {
  AddTodoListEvent({required String title});
}

class RemoveTodoListEvent extends TodoListEvent {
  RemoveTodoListEvent({required int index});
}
