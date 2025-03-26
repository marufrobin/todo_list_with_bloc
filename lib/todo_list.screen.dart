import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_with_bloc/cubit/todo_list.cubit.dart';
import 'package:todo_list_with_bloc/model/todo_list.model.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo List")),
      body: Column(
        children: [
          Text("Todo List"),
          BlocBuilder<TodoListCubit, List<TodoListModel>>(
            builder: (context, state) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.elementAt(index).name),
                    subtitle: Text(state.elementAt(index).description),
                    trailing: Text(state.elementAt(index).createdAt.toString()),
                  );
                },
                itemCount: state.length,
              );
            },
          ),
        ],
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
