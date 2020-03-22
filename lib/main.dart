import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  final _questions = const [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text':'Black', 'score':10},
          {'text':'Blue', 'score':8},
          {'text':'White', 'score':6},
          {'text':'Red', 'score':4},
          {'text':'Yellow', 'score':2},    
          ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text':'Cat', 'score':8},
          {'text':'Dog', 'score':5},
          {'text':'Bird', 'score':4},
          {'text':'Fish', 'score':3},    
          ],
      },
      {
        'questionText': 'What\'s your favorite programming lanuage?',
        'answers': [
          {'text':'C#', 'score':5},
          {'text':'Python', 'score':8},
          {'text':'Java', 'score':3},
          {'text':'PhP', 'score':1},
          {'text':'Dart', 'score':4},    
          ],
      },
    ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length 
        ? Quiz(
          answerQuestion: _answerQuestion, 
          questionIndex: _questionIndex, 
          questions: _questions,
          )
          : Resutl(_totalScore),
      ),
    );
  }
}
