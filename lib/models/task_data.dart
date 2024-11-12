
import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> task_list = [
    Task(name: 'buy bike'),
    Task(name: 'buy home'),
    Task(name: 'buy home')
  ];

  void addTask(Task){
    task_list.add(Task);
    notifyListeners();
  }

  void removeTask(task){
    task_list.remove(task);
    notifyListeners();
  }

  int get getCount{
    return task_list.length;
  }
}