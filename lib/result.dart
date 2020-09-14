import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "Гайхалтай";
    } else if (resultScore <= 12) {
      resultText = 'Сайн';
    } else if (resultScore <= 16) {
      resultText = "Дунд";
    } else {
      resultText = "Маш муу";
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("Асуултыг дахин эхлүүлэх"),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
