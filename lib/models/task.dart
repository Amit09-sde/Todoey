class Task{
  bool isDone;
  String name;
  Task({this.isDone=false, required this.name});

  void changeState(){
    isDone = !isDone;
  }
}