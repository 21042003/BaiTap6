import 'package:flutter/material.dart';
import 'package:untitled1/screens/create_task.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: CreateTaskScreen(),
    );
  }
}
