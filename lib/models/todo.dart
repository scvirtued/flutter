class Todo {
  final String value;
  bool completed;
  final DateTime? due;
  final String? notes;

  Todo({
    required this.value,
    this.completed = false,
    this.due,
    this.notes,
  });
}
