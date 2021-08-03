class TaskGroup{
  int id;
  String description;
  List<Task> tasks;

  TaskGroup(this.id, this.description, this.tasks);
}

class Task {
  int id;
  String description;

  Task(this.id, this.description);
}
