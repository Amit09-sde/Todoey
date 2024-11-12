import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TaskTile extends StatelessWidget {
 
  final String name;
  final bool isChecked;
  final Function(bool?)  togglecheck;

  TaskTile({ required this.name, required this.isChecked, required this.togglecheck});
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(icon: Icon(Icons.delete), onPressed:() {
        print(name);
        print('je');
        Provider.of<TaskData>(context, listen: false).removeTask(Task(name: name));
      },),
      title: Text(name, style: TextStyle(decoration: isChecked? TextDecoration.lineThrough : null),),
      trailing: Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged:  togglecheck),
    );
  }
}
