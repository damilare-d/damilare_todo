import 'package:damilare_todo/models/Task_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {

  String ? newTaskTitle ;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color (0xff757575),
      child: Container(
        padding:const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Add Task',
            style:TextStyle(fontSize: 20)
            ),
            TextField(
              autocorrect: true,
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newTask){
                newTaskTitle = newTask;
              },
            ),
            TextButton(
              style: TextButton.styleFrom (backgroundColor: Colors.lightBlueAccent),
              onPressed: ( ) {
              Provider.of<TaskData>(context, listen:false).addTask(newTaskTitle!);
              Navigator.pop(context);
              },
              child: const Center(
                child:Text('Add', style: TextStyle(
                   color : Colors.white, fontSize: 15),)
            )
            )
          ],
        ),
      ),
    );
  }
}
