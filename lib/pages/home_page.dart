import 'package:flutter/material.dart';

import 'package:todo_hive_app/components/components.dart';
import 'package:todo_hive_app/models/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final todoList = <Todo>[
    Todo('To Do 1', false),
    Todo('To Do 2', true),
  ];

  void toggleTodo(Todo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do'),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
          child: TodoTile(
            todo: todoList[index],
            onChanged: () => toggleTodo(todoList[index]),
          ),
        ),
      ),
    );
  }
}
