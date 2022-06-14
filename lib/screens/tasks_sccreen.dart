import 'package:damilare_todo/screens/add_task_screen.dart';
import 'package:flutter/material.dart';
import '../models/Task_List.dart';
import 'package:provider/provider.dart';
import '../models/Task_data.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.lightBlueAccent,
      onPressed: ( ) {
        showModalBottomSheet(context: context, builder: (context) =>
            AddTaskScreen( )
        );
      },
      child: Icon(Icons.add),
    ),
    body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 30, top: 60, right: 30, bottom: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                     const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: Icon(Icons.list,
                          size: 30,
                          color: Colors.lightBlueAccent
                          ,),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                          'ToDoey',
                          style:TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w700,
                            color: Colors.white
                          )),
                      Text(
                        '${Provider.of<TaskData>(context).taskCount} Tasks',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                     child: Container(
                          decoration: const BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 20.0),
                         child: TaskList(tasks: [],),
                       )
                        ),
                   )
                    ],
                  ),
    )
        );
  }
}

