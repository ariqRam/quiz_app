import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 6) {
      resultText = "Heyyy, You are a babi";
    } else if (totalScore > 6) {
      resultText = "Heyy, You are nicer";
    } else if (totalScore > 12) {
      resultText = "You are super duper nice";
    } else {
      resultText = "You are a sage";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 48,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
