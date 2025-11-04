import 'dart:math';

import 'package:flutter/material.dart';

class ColorChanger extends StatefulWidget {
  const ColorChanger({super.key});

  @override
  State<ColorChanger> createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  // This is boring version :(
  Color? color = Color.fromRGBO(15, 59, 153, 1);
  var begin = Alignment.topCenter;
  var end = Alignment.bottomCenter;
  var Direction = ["vertical", "horisental", "Left To Right", "Right To Left"];
  var Beginning = [
    Alignment.centerLeft,
    Alignment.topCenter,
    Alignment.topLeft,
    Alignment.bottomLeft,
  ];
  var Ending = [
    Alignment.centerRight,
    Alignment.bottomCenter,
    Alignment.bottomRight,
    Alignment.topRight,
  ];
  int r = 50;
  int g = 65;
  int b = 170;
  double o = 255;
  String direction = "Horizental";
  void changeColor() {
    setState(() {
      var temp = Random();
      r = temp.nextInt(256);
      g = temp.nextInt(256);
      b = temp.nextInt(256);
      o = (0.5 * temp.nextDouble()) + 0.5;
      color = Color.fromRGBO(r!, g!, b!, o!);
    });
  }

  void changeDirection() {
    setState(() {
      int n = Random().nextInt(4);
      begin = Beginning[n];
      end = Ending[n];
      direction = Direction[n];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color!, Colors.white, color!],
            begin: begin,
            end: end,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  changeColor();
                },
                child: Text(
                  "ChangeColor",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              Text("Red: $r  Green: $g  Blue: $b"),
              SizedBox(height: 30),
              OutlinedButton(
                onPressed: () {
                  changeDirection();
                },
                child: Text(
                  "Change Direction",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              Text("Direction: $direction"),
            ],
          ),
        ),
      ),
    );
  }
}
