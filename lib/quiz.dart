import 'package:flutter/material.dart';
import 'package:quiz_app/class.inc.dart';
import 'answer.dart';
import 'question.dart';
import './class.inc.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final Function(int) answerQuestions;
  final int indexQuestion;

  Quiz(
      {required this.answerQuestions,
      required this.questions,
      required this.indexQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[indexQuestion]['questionText'],
        ),
        //
        ...(questions[indexQuestion]['answer'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(() => answerQuestions(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
