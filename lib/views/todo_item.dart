import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/models/todo.dart';

/// A widget that represents one to-do
class TodoItem extends StatelessWidget {
  final Todo todo;

  const TodoItem({
    Key? key,
    required this.todo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String notes = "";
    String due = "";
    if (todo.notes != null) {
      notes = "${todo.notes}\n";
    }
    if (todo.due != null) {
      due = "Due on: ${DateFormat.yMd().add_Hms().format(todo.due!)}";
    }

    return CheckboxListTile(
      value: todo.completed,
      onChanged: (_) {},
      title: Text(todo.value),
      isThreeLine: true,
      subtitle: Text(
        "$notes$due",
      ),
    );
  }
}
