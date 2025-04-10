import 'package:flutter/material.dart';

import 'package:todo_hive_app/models/models.dart';

class TodoTile extends StatelessWidget {
  final Todo todo;
  final VoidCallback onChanged;

  const TodoTile({
    super.key,
    required this.todo,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // style
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      tileColor: Colors.yellow,

      // content
      // checkbox
      leading: Checkbox(
        activeColor: Colors.black,
        value: todo.isDone,
        onChanged: (_) => onChanged(),
      ),

      // text
      title: Text(
        todo.text,
        style: TextStyle(
          decoration: todo.isDone ? TextDecoration.lineThrough : null,
        ),
      ),

      // function
      onTap: onChanged,
    );
  }
}
