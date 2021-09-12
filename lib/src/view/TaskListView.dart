import 'package:flutter/material.dart';
import 'package:lista_de_tarefas/src/model/task.dart';
import 'package:lista_de_tarefas/src/widgets/TaskGroupListItem.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({Key? key, required this.tasks}) : super(key: key);

  final List<TaskGroup> tasks;

  getTasksFields() {
    List<Widget> fields = [];
    tasks.forEach((element) {
      fields.add(Text(element.description));
    });
    return fields;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: getTasksFields(),);
  }
}
