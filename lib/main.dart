import 'package:flutter/material.dart';
import 'pages/task_list.dart';
import 'pages/task_form.dart';
import 'pages/task_details.dart';

void main() => runApp(TaskManagementApp());

class TaskManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Management',
      initialRoute: '/',
      routes: {
        '/': (context) => TaskListPage(),
        '/taskForm': (context) => TaskFormPage(),
        '/taskDetails': (context) => TaskDetailsPage(),
      },
    );
  }
}
