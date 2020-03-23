import 'package:flutter/material.dart';

class Resutl extends StatelessWidget {

final int resultScore;
final Function resetHandler;

Resutl(this.resultScore, this. resetHandler);

String get resultPhrase{
  String resultText;
  if(resultScore >= 20){
    resultText = 'You are awsome!!';
  }
  else if (resultScore >= 12) {
    resultText = 'You are Good!!';
  }
  else if (resultScore >= 8) {
    resultText = 'You are OK!';
  }
  else if (resultScore >= 5) {
    resultText = 'You are Not OK!';
  }
  else {
    resultText = 'You need to see a doctor!!';
  }
  return resultText;
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,), 
            textAlign: TextAlign.center,),
            FlatButton(onPressed: resetHandler, 
            child: Text('Restart Quiz!',),
            textColor: Colors.blue,
            ),
        ],
      ),   
    );
  }
}