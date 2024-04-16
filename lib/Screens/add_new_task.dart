import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Models/taskData.dart';

class AddNewTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newTask;

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24, color: Color.fromARGB(255, 66, 186, 234)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTask = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
            child: TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(newTask!);
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 66, 186, 234)),
              ),
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
