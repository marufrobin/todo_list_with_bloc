import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_with_bloc/cubit/todo_list.cubit.dart';
import 'package:todo_list_with_bloc/model/todo_list.model.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: Text("Todo List")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<TodoListCubit, List<TodoListModel>>(
          builder: (context, state) {
            return ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final todoList = state.elementAt(index);

                return ListTile(
                  title: Text(todoList.name),
                  subtitle: Text(todoList.createdAt.toString()),
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
          Navigator.pushNamed(context, '/add_todo_list');
        },
        tooltip: 'Add Todo List',
        child: Icon(Icons.add),
      ),
    );
  }
}
