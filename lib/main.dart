import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Models/taskData.dart';
import 'package:todoey/Screens/task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return TaskData();
      },
      child: const MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
