import 'dart:ffi';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    TextEditingController  task_c = TextEditingController();
    String task = '';
    return Container(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            textAlign: TextAlign.center,
            "Add Task",
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: TextField(
              onChanged: (value) {
                task = value;
              },
              controller: task_c,
              // decoration: InputDecoration(bord),
              autofocus: true,
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: (){
                print(task);
                Provider.of<TaskData>(context, listen: false).addTask(Task(name: task));
                Navigator.pop(context);
            },
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent),
          )
        ],
      ),
    );
  }
}
