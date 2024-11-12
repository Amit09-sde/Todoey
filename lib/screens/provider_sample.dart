import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/task_screan.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  final String topsec = 'sasa';

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider<DataProvider>(
      create: (context) => DataProvider(),
      child: MaterialApp(
        home: Scaffold(
          appBar:   AppBar(title: MyText(),),
          body: Level1()),
      ),
    );
  }
}

class Level1 extends StatelessWidget {
  const Level1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Level2();
  }
}

class Level2 extends StatelessWidget {
  const Level2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        MyTextField(),
        Level3(),
      ],
    );
  }
}

class Level3 extends StatelessWidget {
  const Level3({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(Provider.of<DataProvider>(context).data);
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<DataProvider>(context).data);
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => {
          Provider.of<DataProvider>(context).chnageval(value)
      },
    );
  }
}


class DataProvider extends ChangeNotifier{
  String data = 'hello';
  void chnageval(String newdata){

    data = newdata;
    notifyListeners();
  }
}