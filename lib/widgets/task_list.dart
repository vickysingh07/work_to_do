import 'package:flutter/material.dart';
import 'package:work_to_do/widgets/task_tile.dart';
import 'package:work_to_do/widgets/tasks.dart';

class Task_List extends StatefulWidget {
  List<Tasks>tasks;
  Task_List(this.tasks);
  @override
  _Task_ListState createState() => _Task_ListState();
}

class _Task_ListState extends State<Task_List> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return Task_tile(
        taskname: widget.tasks[index].name,
        isChecked: widget.tasks[index].isDone,
        checkboxinterchange: (newValue){
          setState(() {
            widget.tasks[index].toggle();
          });
        },
      );
    },
    itemCount: widget.tasks.length,);
  }
}
