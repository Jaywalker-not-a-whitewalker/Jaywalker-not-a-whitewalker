import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './questions.dart';
import 'package:first_app/answers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //Members
  var question = [
    {
      "questions": "what's your favourite color ?",
      "Answers": [
        "Red",
        "blue",
        "Black",
      ]
    },
    {
      "questions": "what's your fav pet animal ?",
      "Answers": [
        "Dog",
        "Cat",
        "Pig",
        "Fish",
      ]
    }
  ];
  var _questionIndex = 0;
  List<String> answers = ["Answer 1", "Answer 2", "Answer 3"];
  // Methods
  void _answerChosen() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (kDebugMode) {
      print("Answer 1 was selected");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My first flutter"),
        ),
        body: Column(
          children: [
            Questions(question[_questionIndex]["questions"].toString()),
            ...(question[_questionIndex]["Answers"] as List<String>)
                .map((answer) {
              return Answers(_answerChosen, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
