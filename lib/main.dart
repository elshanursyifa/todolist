import 'package:flutter/material.dart';
import 'package:todolist/login.dart';

void main() {
  runApp(TodoListApp());
}

class TodoListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo list',
      home: LoginPage()
    );
  }
}