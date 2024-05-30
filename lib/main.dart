import 'package:day_5/start_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Course());
}

class Course extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}
