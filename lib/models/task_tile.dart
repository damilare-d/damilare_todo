import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool  isChecked;
  final String ? taskTitle;
  void Function (bool?) ? checkboxCallback;

  TaskTile({required this.checkboxCallback, required this.isChecked, required this.taskTitle}) ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle!,
      style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
      ),
    );
  }
}
