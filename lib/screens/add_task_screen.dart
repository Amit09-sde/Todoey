import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              // decoration: InputDecoration(bord),
              autofocus: true,
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {},
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
