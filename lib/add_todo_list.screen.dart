import 'package:flutter/material.dart';

class AddTodoListScreen extends StatelessWidget {
  AddTodoListScreen({super.key});

  final _addTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Todo List")),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Text("Add Todo list"),
            TextField(
              controller: _addTextController,
              decoration: InputDecoration(
                hintText: "Add Todo List",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
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
}
