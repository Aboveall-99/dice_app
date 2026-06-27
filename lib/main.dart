import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });

  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:
      Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          shape: Border.symmetric(horizontal: BorderSide(color: Colors.black26, width: 3)),
          title: Center(child: Text(
            "Dicee",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,

            ),
          ),
          ),
          backgroundColor: Colors.red,
        ),
        body:
        Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: (){
                      changeDice();
                    },
                    child: Image.asset("images/dice$leftDiceNumber.png")
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){
                    changeDice();
                  },
                  child: Image.asset("images/dice$rightDiceNumber.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

