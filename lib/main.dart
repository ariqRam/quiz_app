import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        {"text": "Blue", "score": 2},
        {"text": "Red", "score": 4},
        {"text": "Purple", "score": 8},
        {"text": "Black", "score": 10}
      ],
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        {"text": "Cat", "score": 2},
        {"text": "Dog", "score": 4},
        {"text": "Hedgehog", "score": 8},
        {"text": "Mouse", 'score': 10}
      ],
    },
    {
      "questionText": "What's your name?",
      "answers": [
        {"text": "Ramdhany", "score": 2},
        {"text": "Budi", "score": 4},
        {"text": "Athallah", "score": 8}
      ],
    },
  ];
  int _totalScore = 0;
  int _questionIndex = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < _questions.length) {
      print('More questions available.');
    } else {
      print('Questions are done.');
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          backgroundColor: Colors.purple,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore),
      ),
    );
  }
}
