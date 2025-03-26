import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_with_bloc/model/todo_list.model.dart';

class TodoListCubit extends Cubit<List<TodoListModel>> {
  TodoListCubit() : super([]);
}
