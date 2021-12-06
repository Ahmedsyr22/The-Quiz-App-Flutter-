import 'package:flutter/material.dart';
import './Questions.dart';
import './Answers.dart';

class quiz extends StatelessWidget {
  final List<Map<String , Object>> questionss;
  final Function questions;
  final int questionindex;

  quiz({required this.questionss , required this.questions , required this.questionindex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questionss[questionindex]['question1'] as String,
        ),
        ...(questionss[questionindex]["answer"]
        as List<Map<String, Object>>)
            .map((answer) {
          return Answers(
                  () => questions(int.parse(answer['score'].toString())),
              answer['text1'].toString());
        }).toList(),

      ],
    );
  }
}

