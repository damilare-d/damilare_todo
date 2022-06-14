import 'package:damilare_todo/models/Task_data.dart';
import 'package:damilare_todo/screens/tasks_sccreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
          ChangeNotifierProvider(
          create: (BuildContext context) =>TaskData()),
      ],
          child: const MyApp( ),
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home:  TaskScreen( )
        );
  }
}
