import 'package:flutter/material.dart';
import 'package:todo_list_with_bloc/add_todo_list.screen.dart';
import 'package:todo_list_with_bloc/todo_list.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => TodoListScreen(),
        '/add_todo_list': (_) => AddTodoListScreen(),
      },
    );
  }
}
