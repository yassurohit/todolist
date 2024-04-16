import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Models/taskData.dart';

import 'package:todoey/widgets/mylisttile.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, data, _) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = data.tasks![index];
            return MyListTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              toggleCheckbox: (newValue) {
                data.updateTask(task);
              },
              removeCallback: () {
                data.deleteTask(task);
              },
            );
          },
          itemCount: data.taskCount,
        );
      },
    );
  }
}
