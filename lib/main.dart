import 'package:flutter/material.dart';

void main() {
  runApp(const MyTodoApp());
}

class MyTodoApp extends StatelessWidget {
  const MyTodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TodoListPage(),
    );
  }
}

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('List page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const TodoAddPage();
          }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TodoAddPage extends StatelessWidget {
  const TodoAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Todo Add page (Click here to back to home'),
        ),
      ),
    );
  }
}