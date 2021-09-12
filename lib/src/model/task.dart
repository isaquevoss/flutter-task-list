class Task {
  int id;
  String description;

  Task(this.id, this.description);
}

class TaskGroup{
  int id;
  String description;
  List<Task> tasks = List.empty();
  bool checked = false;

  TaskGroup(this.id, this.description );
 }


