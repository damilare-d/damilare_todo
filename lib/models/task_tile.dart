import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  final bool  isChecked;
  final String ? taskTitle;
 final void Function(bool?)?  checkboxCallback;
  final void Function( )?  longpressedCallback;

  TaskTile({required this.checkboxCallback, required this.isChecked, required this.taskTitle , required this.longpressedCallback}) ;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressedCallback ,
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
