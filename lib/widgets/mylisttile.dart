import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
 

  MyListTile({
    Key? key,
    required this.taskTitle,
    required this.isChecked,
    required this.toggleCheckbox,
    required this.removeCallback,
  }) : super(key: key);

  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) toggleCheckbox;
  final void Function() removeCallback;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () =>removeCallback(),
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueAccent,
        value: isChecked,
        onChanged: toggleCheckbox,
      ),
    );
  }
  

}
