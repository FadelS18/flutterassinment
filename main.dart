import 'package:flutter/material.dart';
import 'ColorChanger.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ColorChanger());
  }
}
