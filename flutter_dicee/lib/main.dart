import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  Widget build(BuildContext context) {
    var leftDiceNumber = Random().nextInt(6) + 1;
    var rightDiceNumber = Random().nextInt(6) + 1;

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightDiceNumber = Random().nextInt(6) + 1;
                  // leftDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                  // rightDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
