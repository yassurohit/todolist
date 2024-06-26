import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/Models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Task1'),
    Task(name: 'Task2'),
    Task(name: 'Task3'),
  ];

  UnmodifiableListView<Task>? get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String name) {
    final newTask = Task(name: name);
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(Task newTask) {
    newTask.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task newTask) {
    _tasks.remove(newTask);
    notifyListeners();
  }
}
