import 'package:todo_app/models/todo.dart';

/// implementation of the ITodoRepository
class TodoRepository {
  List<Todo> getTodos() {
    return [
      Todo(
        value: "Do the laundry",
      ),
      Todo(value: "Do the dishes", completed: true),
      Todo(
          value: "Take out trash",
          notes: "They pick it up on Tuesdays",
          due: DateTime(2023, 10, 8, 7)),
      Todo(value: "Finish assignment 3", due: DateTime(2023, 10, 7, 2)),
    ];
  }
}
