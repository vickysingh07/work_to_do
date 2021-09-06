import 'package:flutter/material.dart';
import 'package:work_to_do/widgets/task_tile.dart';
import 'package:work_to_do/widgets/tasks.dart';

class Task_List extends StatefulWidget {
  const Task_List({Key? key}) : super(key: key);

  @override
  _Task_ListState createState() => _Task_ListState();
}

class _Task_ListState extends State<Task_List> {
  List<Tasks>tasks = [
    Tasks(name:'buy milk'),
    Tasks(name: 'buy banana')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return Task_tile(
        taskname: tasks[index].name,
        isChecked: tasks[index].isDone,
        checkboxinterchange: (newValue){
          setState(() {
            tasks[index].toggle();
          });
        },
      );
    },
    itemCount: tasks.length,);
  }
}
