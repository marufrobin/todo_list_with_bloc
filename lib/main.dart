import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_with_bloc/add_todo_list.screen.dart';
import 'package:todo_list_with_bloc/add_todo_list_bloc.screen.dart';
import 'package:todo_list_with_bloc/bloc/todo_list_bloc.dart';
import 'package:todo_list_with_bloc/cubit/todo_list.cubit.dart';
import 'package:todo_list_with_bloc/todo_list.screen.dart';
import 'package:todo_list_with_bloc/todo_list_bloc.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TodoListCubit()),
        BlocProvider(create: (context) => TodoListBloc()),
      ],
      child: MaterialApp(
        title: 'Bloc and Cubit in Todo list',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => AppRoot(),
          '/todo_list': (_) => TodoListScreen(),
          '/add_todo_list': (_) => AddTodoListScreen(),
          '/todo_list_bloc': (_) => TodoListBlocScreen(),
          '/add_todo_list_bloc': (_) => AddTodoListBlocScreen(),
        },
      ),
    );
  }
}

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Todo list with bloc",
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 16,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/todo_list');
              },
              child: Text('Todo List Cubit'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/todo_list_bloc');
              },
              child: Text('Todo List Bloc'),
            ),
          ],
        ),
      ),
    );
  }
}
