
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {

  dynamic task_list = Provider.of<TaskData>(context).task_list;

    return Consumer<TaskData>(
      builder: (context, value, child) {
      return ListView.builder(
        itemBuilder: (BuildContext context, index) {
          return TaskTile(
              name: task_list[index].name, isChecked: task_list[index].isDone, togglecheck: (v){
               setState(() {
                  value.task_list[index].changeState();
               });
              },);
        },
        itemCount: value.getCount,
         );}
    );
  }
}
