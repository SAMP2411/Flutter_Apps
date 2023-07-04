import 'package:flutter/material.dart';

// import './answer.dart';
// import './question.dart';

import './quiz.dart';
import './result.dart';

// Another way  of writing the void main
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'white', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favourite word?',
      'answers': [
        {'text': 'Baby', 'score': 10},
        {'text': 'Quoala', 'score': 6},
        {'text': 'Chicku', 'score': 3},
        {'text': 'Golu', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favourite instructor?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Sam', 'score': 6},
        {'text': 'Valah', 'score': 3},
        {'text': 'Samarth', 'score': 1}
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalscore += score;

    setState(() {
      // if (_questionIndex >= 0 && _questionIndex < 2) {
      _questionIndex += 1;
      // } else {
      //   _questionIndex -= 1;
      // }
    });
    if (_questionIndex < _questions.length) {
      print("We have more quesitons !!");
    } else {
      print("No More Questions");
    }

    print(_questionIndex);
    // print("Answer Chosen");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalscore, _resetQuiz),
      ),
    );
  }
}
