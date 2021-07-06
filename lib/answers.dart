import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function selecthandler;
  final String answertext;
  Answers(this.selecthandler,this.answertext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(

              child: Text(answertext),
              onPressed: selecthandler,
      
    ));
  }
}