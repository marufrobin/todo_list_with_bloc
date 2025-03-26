part of 'todo_list_bloc.dart';

@immutable
sealed class TodoListEvent {}

class AddTodoListEvent extends TodoListEvent {
  final String title;

  AddTodoListEvent({required this.title});
}

class RemoveTodoListEvent extends TodoListEvent {
  final int index;

  RemoveTodoListEvent({required this.index});
}
