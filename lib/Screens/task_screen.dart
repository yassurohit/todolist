import 'package:flutter/material.dart';
import 'package:todoey/Models/taskData.dart';
import 'package:todoey/Screens/add_new_task.dart';
import 'package:todoey/widgets/mylistview.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 66, 186, 234),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 66, 186, 234),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddNewTask(),
              ),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 110),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: CircleAvatar(
                radius: 25,
                child: Icon(
                  Icons.list,
                  size: 30,
                  color: Color.fromARGB(255, 66, 186, 234),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 24),
              child: Text(
                'Todoey',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                '${Provider.of<TaskData>(context).taskCount}  Tasks',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: MyListView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
