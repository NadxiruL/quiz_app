import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';

class Question extends StatelessWidget {
  final String
      questionText; //this questionText will never change after initialization in constrctor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      child: Text(
        questionText,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
