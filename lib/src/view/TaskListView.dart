import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lista_de_tarefas/src/model/task.dart';
import 'package:lista_de_tarefas/src/widgets/TaskGroupListItem.dart';


class TaskListView extends StatefulWidget {
  const TaskListView({Key? key, required this.tasks}) : super(key: key);
  final List<TaskGroup> tasks;
  @override
  _TaskListViewState createState() => _TaskListViewState( this.tasks);



}

class _TaskListViewState extends State<TaskListView> {
  final List<TaskGroup> tasks;

  _TaskListViewState(this.tasks);

  @override

  change(item){

    log('test');
    log(item.toString());
    setState(() {

    });
  }
  List<Widget> getTasksFields() {
    List<Widget> fields = [];
    this.tasks.forEach((element) {
      fields.add(Card(
          child:
          Column(children: [CheckboxListTile(value: false , onChanged: change, title: Text(element.description))])));
    });
    return fields;
  }

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.tasks.length,
      itemBuilder: (context,index){
        return Card(
          child: CheckboxListTile(
            value: this.tasks[index].checked,
            onChanged: (value){
              setState(() {
                widget.tasks[index].checked = value!;
              });
            },
            title: Text( this.tasks[index].description ),
          ),
        );
      },
    );
  }
}
