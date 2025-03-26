# Todo list with Cubit

`Todo_list.cubit.dart` is the cubit file that contains the logic of the todo list.

```dart
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
```

For adding a todo list, we need to call the `addTodoList` method and pass the name of the todo list as a parameter.

```dart
onPressed: () {
   BlocProvider.of<TodoListCubit>(context).addTodoList(name: _addTextController.text);
},
```

For removing a todo list, we need to call the `removeTodoList` method and pass the index of the todo list as a parameter.

```dart
onPressed: () {
  BlocProvider.of<TodoListCubit>(context).removeTodoList(index: index);
},
```

## Todo list with Bloc

`Todo_list.bloc.dart` is the bloc file that contains the logic of the todo list.
