import 'dart:math';

import 'package:flutter/material.dart';

class RockPaperScissors extends StatefulWidget {
  const RockPaperScissors({super.key});

  @override
  State<RockPaperScissors> createState() => _RockPaperScissorsState();
}

class _RockPaperScissorsState extends State<RockPaperScissors> {
  var choice = ['✊', '✋', '✌'];
  int userScore = 0;
  int computerScore = 0;
  String yourChoice = '❓';
  String computerChoice = '❓';
  String result = '';
  void rockpaperscissor(int userChoice, int compChoice) {
    setState(() {
      yourChoice = choice[userChoice];
      computerChoice = choice[compChoice];
      if (userChoice == compChoice) {
        result = "It is a tie 😐";
      } else if ((userChoice + 1) == compChoice ||
          (userChoice == 2 && compChoice == 0)) {
        result = "You Lose 😥";
        computerScore = computerScore + 1;
      } else {
        result = "You Won 🥳";
        userScore++;
      }
    });
  }

  void restart() {
    setState(() {
      result = '';
      computerChoice = '❓';
      yourChoice = '❓';
      userScore = 0;
      computerScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Let's play Rock-Paper-Scissors",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 60),
            Text(
              "You: $yourChoice",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text(
              "Computer: $computerChoice",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    int temp = Random().nextInt(3);
                    rockpaperscissor(0, temp);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[400],
                  ),
                  child: Text(choice[0], style: TextStyle(fontSize: 50)),
                ), // rock
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    int temp = Random().nextInt(3);
                    rockpaperscissor(1, temp);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[400],
                  ),
                  child: Text(choice[1], style: TextStyle(fontSize: 50)),
                ), //paper
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    int temp = Random().nextInt(3);
                    rockpaperscissor(2, temp);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[400],
                  ),
                  child: Text(choice[2], style: TextStyle(fontSize: 50)),
                ),
              ],
            ),
            SizedBox(height: 40),
            result == ''
                ? SizedBox(height: 36)
                : Text(
                    result,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Your Score: $userScore"
                  "Computer Score: $computerScore",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(width: 30),
                Text(
                  "Your Score: $userScore"
                  "Computer Score: $computerScore",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            ),
            SizedBox(height: 20),
            IconButton(
              onPressed: () {
                restart();
              },
              icon: Icon(Icons.refresh, color: Colors.red, size: 40),
            ),
          ],
        ),
      ),
    );
  }
}
