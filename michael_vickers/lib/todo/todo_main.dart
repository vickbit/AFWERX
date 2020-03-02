import 'package:flutter/material.dart';
import 'todo_task_screen.dart';
import 'package:provider/provider.dart';
import 'todo_task_data.dart';
import 'package:michael_vickers_app/routegenerator.dart';

void main() => runApp(MyToDoApp());

class MyToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}