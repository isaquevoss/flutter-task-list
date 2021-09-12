import 'package:flutter/material.dart';
import 'package:lista_de_tarefas/src/model/task.dart';
import 'package:lista_de_tarefas/src/view/TaskListView.dart';

class TaskListApp extends StatefulWidget {


  @override
  _TaskListAppState createState() => _TaskListAppState();
}

class _TaskListAppState extends State<TaskListApp> {

  List<TaskGroup> tasks = List<TaskGroup>.generate(2, (index) => TaskGroup(0, 'New Description'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My task list'),),
      body: TaskListView(tasks: this.tasks, ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        tasks.add(TaskGroup(0, 'Works fine'));
        setState(() {});
      },
      ),
    );
  }
}
