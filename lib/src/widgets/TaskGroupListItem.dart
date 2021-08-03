import 'package:flutter/material.dart';
import 'package:lista_de_tarefas/src/model/task.dart';

class TaskGroupListItem extends StatelessWidget {
  const TaskGroupListItem(this.taskGroup, {Key? key}) : super(key: key);
  final TaskGroup taskGroup;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(taskGroup.description),
    );
  }
}
