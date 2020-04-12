import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function func;
  final String answerText;

  Answer(this.func, this.answerText);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50, right: 50),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.purple[900],
        textColor: Colors.white,
        child: Text(this.answerText),
        onPressed: func),
      );
  }
}