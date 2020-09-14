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
  final questions = [
    {
      "questionText": "Таны дуртай өнгө юу вэ?",
      "answer": [
        {'text': "Хар", "score": 10},
        {"text": "Улаан", "score": 5},
        {"text": "Цагаан", "score": 3},
        {"text": "Ногоон", "score": 1}
      ],
    },
    {
      "questionText": "Таны дуртай амьтан юу вэ?",
      "answer": [
        {"text": "Адуу", "score": 3},
        {"text": "Үхэр", "score": 5},
        {"text": "Хонь", "score": 7},
        {"text": "Ямаа", "score": 9},
        {"text": "Тэмээ", "score": 11}
      ],
    },
    {
      "questionText": "Таны дуртай хөлбөмөгийн баг юу вэ?",
      "answer": [
        {"text": "Арсенал", "score": 10},
        {"text": "Челси", "score": 5},
        {"text": "Ливерпүүл", "score": 3},
        {"text": "Барселона", "score": 1}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _questionAnswer(int score) {
    _totalScore += score;
    // var aBool = true;
    // aBool = false;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < questions.length) {
      print('Asuult duusaagui baina');
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                answerQuestion: _questionAnswer,
                questions: questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
