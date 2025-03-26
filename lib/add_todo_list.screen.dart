import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_with_bloc/cubit/todo_list.cubit.dart';

class AddTodoListScreen extends StatelessWidget {
  AddTodoListScreen({super.key});

  final _addTextController = TextEditingController();

  _addTodoList(BuildContext context) {
    BlocProvider.of<TodoListCubit>(
      context,
    ).addTodoList(name: _addTextController.text);
    _addTextController.clear();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: Text("Add Todo List")),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          spacing: 16,
          children: [
            Text("Add Todo list"),
            _textField(
              controller: _addTextController,
              hintText: 'Name',
              context: context,
            ),

            ElevatedButton.icon(
              onPressed: () => _addTodoList(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: colorScheme.primary,
              ),
              icon: Icon(Icons.add, color: colorScheme.onSecondary),
              label: Text(
                'Add',
                style: TextStyle(color: colorScheme.onSecondary),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextField _textField({
    required TextEditingController controller,
    required String hintText,
    required BuildContext context,
  }) {
    return TextField(
      controller: controller,
      onSubmitted: (value) => _addTodoList(context),
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
