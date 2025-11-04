import 'package:flutter/material.dart';
import 'package:rockpaperscissors/rock_paper_scissors_cool.dart';
// Make sure the file 'rock_paper_scissors_cool.dart' exists in 'lib' and contains a RockPaperScissorsCool widget.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rock Paper Scissors Game',
      home: const RockPaperScissors(),
    );
  }
}
