import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import './quiz.dart';
import './result.dart';
import 'class.inc.dart';

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
  final _questions = const [
    {
      'questionText': 'what is your favorite color?',
      'answer': [
        {'text': 'red', 'score': 1},
        {'text': 'blue', 'score': 2},
        {'text': 'green', 'score': 3},
        {'text': 'black', 'score': 4},
      ],
    },
    {
      'questionText': 'what is your favorite pet?',
      'answer': [
        {'text': 'cat', 'score': 1},
        {'text': 'dog', 'score': 2},
        {'text': 'bird', 'score': 3},
        {'text': 'fish', 'score': 4},
      ],
    },
    {
      'questionText': 'what is your favorite food?',
      'answer': [
        {'text': 'pizza', 'score': 1},
        {'text': 'chicken rice', 'score': 2},
        {'text': 'pasta', 'score': 3},
        {'text': 'noodles', 'score': 4},
      ],
    },
  ];

  //decalre satu variable untu tukar question.
  //setkan sebagai 0
  var _indexQuestion = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _indexQuestion = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    // _totalScore += score;
    _totalScore = _totalScore + score;
    setState(() {
      // _indexQuestion = _indexQuestion + 1;
      //function menjalankan index ini
      //increments from index 0 to reset of question index.
      _indexQuestion++;
    });
    if (_indexQuestion < _questions.length) {
      print('we have more questions.');
    } else {
      print('no more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    //WHY DO WE HAVE LIST HERE? AND THERE IS MAP IN LIST.
    //CAUSE WE ARE HOLDING MORE THAN ONE QUESTIONS AND MORE THAN ONE ANSWERS.
    //WE ACCESS THE QUESTION AND ANSWER BY INDEX.

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        //use ternary if here , after quiz question end show result.
        body: _indexQuestion < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                indexQuestion: _indexQuestion,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
