import 'package:damilare_todo/models/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Task.dart';
import 'Task_data.dart';


class TaskList extends StatelessWidget{
 final List <Task> tasks;
  const TaskList({  required this.tasks});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return  ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index){
            final task = taskData.tasks[index];
            return TaskTile(
                isChecked: task.isDone,
                taskTitle: task.name,
                checkboxCallback:(task) {
                  taskData.updateTask(task);
                }, longpressedCallback: (){
                  taskData.deleteTask(task);
            },
                );
          },


        );
      },
    );
}
  }

