import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_with_bloc/bloc/todo_list_bloc.dart';

import 'model/todo_list.model.dart';

class TodoListBlocScreen extends StatelessWidget {
  const TodoListBlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: Text("Todo List Bloc")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<TodoListBloc, List<TodoListModel>>(
          builder: (context, state) {
            return ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final todoList = state.elementAt(index);

                return ListTile(
                  title: Text(todoList.name),
                  subtitle: Text(todoList.createdAt.toString()),
                  trailing: IconButton(
                    onPressed: () {
                      BlocProvider.of<TodoListBloc>(
                        context,
                      ).add(RemoveTodoListEvent(index: index));
                    },
                    icon: Icon(
                      Icons.delete_outline_outlined,
                      color: colorScheme.error,
                    ),
                  ),
                  tileColor: colorScheme.secondary,
                  textColor: colorScheme.onSecondary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              },
              itemCount: state.length,
              separatorBuilder: (context, index) => SizedBox(height: 16),
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add_todo_list_bloc');
        },
        tooltip: 'Add Todo List',
        child: Icon(Icons.add),
      ),
    );
  }
}
