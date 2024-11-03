import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Task 1', style: TextStyle(decoration: isChecked? TextDecoration.lineThrough : null),),
      trailing: TaskCheckbox(isChecked, (bool? checkboxState){
    setState(() {
      isChecked = checkboxState!;
    });
  }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {

  final isChecked ;
  final changeCheckbox;
  TaskCheckbox(this.isChecked, this.changeCheckbox);
 
  
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: changeCheckbox
    );
  }
}
