import 'package:flutter/material.dart';
import 'package:todo_app/views/todo_item.dart';
import '../models/todo.dart';

/// A widget that represents a list of todos
class TodoList extends StatefulWidget {
  final List<Todo> todos;

  const TodoList({Key? key, required this.todos}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: widget.todos.length,
        itemBuilder: (context, index) {
          final todo = widget.todos[index];
          return TodoItem(
            todo: todo,
          );
        });
  }
}
