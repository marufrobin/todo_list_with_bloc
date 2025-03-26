import 'package:flutter/material.dart';

class AddTodoListScreen extends StatelessWidget {
  AddTodoListScreen({super.key});

  final _addTextController = TextEditingController();
  final _descriptionTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Todo List")),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Text("Add Todo list"),
            _textField(controller: _addTextController, hintText: 'Name'),
            _textField(
              controller: _descriptionTextController,
              hintText: 'Description',
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Add'),
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
