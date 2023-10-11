import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/repositories/todo_repository.dart';

import 'todo_list.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  /// We moved the to-dos to the page because we now need to access them
  /// from the AppBar's children.
  final TodoRepository repository = TodoRepository();
  var todos = <Todo>[];

  @override
  void initState() {
    /// we initialize our todos from the repository
    /// we do it in the initState because we only need to do it once
    todos = repository.getTodos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "To Do App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "To-do List",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Divider(),
            Expanded(
                child: TodoList(
              todos: todos,
            )),
          ],
        ),
      ),
    );
  }
}
