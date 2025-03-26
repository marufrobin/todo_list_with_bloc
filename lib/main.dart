import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_with_bloc/add_todo_list.screen.dart';
import 'package:todo_list_with_bloc/cubit/todo_list.cubit.dart';
import 'package:todo_list_with_bloc/todo_list.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoListCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => TodoListScreen(),
          '/add_todo_list': (_) => AddTodoListScreen(),
        },
      ),
    );
  }
}
