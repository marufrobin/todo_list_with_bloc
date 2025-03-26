import 'package:flutter/material.dart';

class AddTodoListScreen extends StatelessWidget {
  AddTodoListScreen({super.key});

  final _addTextController = TextEditingController();
  final _descriptionTextController = TextEditingController();

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
            _textField(controller: _addTextController, hintText: 'Name'),
            _textField(
              controller: _descriptionTextController,
              hintText: 'Description',
            ),
            ElevatedButton.icon(
              onPressed: () {},
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
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
