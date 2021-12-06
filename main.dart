import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questionss = const [
    {
      "question1": "what is the capital of syria",
      "answer": [
        {"text1": "Damascus", "score": 10},
        {"text1": "Aleppo", "score": 0},
        {"text1": "Homs", "score": 0}
      ],
    },
    {
      "question1": "what is the capital of Germany",
      "answer": [
        {"text1": "Munıkh", "score": 0},
        {"text1": "Berlin", "score": 10},
        {"text1": "Mars", "score": 0}
      ],
    },

  ];
  var questionindex = 0;
  var totalcore = 0;

  void resetquiz (){
    setState(() {
      questionindex = 0;
      totalcore = 0;
    });

  }

  void questions(int score) {
    totalcore = totalcore + score;
    setState(() {
      questionindex = questionindex + 1;
      print(questionindex);
    });
    if (questionindex < questionss.length) {
      print("we have more questions");
    }
  }

  Widget build(BuildContext AHMED) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my name is app"),
        ),
        body: questionindex < questionss.length
            ? quiz(questions: questions, questionindex: questionindex, questionss: questionss,)
            :result(totalcore , resetquiz) ,
      ),
    );
  }
}
