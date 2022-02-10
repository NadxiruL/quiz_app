import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetHandler;

  Result(this.resultScore, this.resetHandler);

  //get the keyword.
  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore < 8) {
      resultText = "You are awseome and nice";
    } else if (resultScore < 12) {
      resultText = "Pretty likeable";
    } else if (resultScore < 16) {
      resultText = "You are...strangee!";
    } else {
      resultText = "You are emmm..badd..";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextButton(
            child: Text('Restart Quiz!'),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
