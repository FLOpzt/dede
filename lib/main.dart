import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        title: Text('DéDéDéDé'),
        backgroundColor: Colors.red,
      ),
      body: DiceGame(),
    ),
  ));
}

class DiceGame extends StatefulWidget {
  @override
  State<DiceGame> createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int leftdice = 1;
  int rightdice = 2;

  rolldices() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: () {
                rolldices();
              },
              child: Image.asset('assets/images/dice$leftdice.png'),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                rolldices();
              },
              child: Image.asset('assets/images/dice$rightdice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
