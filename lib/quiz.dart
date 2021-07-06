import 'package:flutter/material.dart';
import 'answers.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final Function answerquestions;
  final int questionindex;
  Quiz({@required this.answerquestions,@required this.questions,@required this.questionindex});
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(questions[questionindex]['questiontext']),
           
           ... (questions[questionindex]['answers']as List<Map<String,Object>>).map((answer)
            {
              return Answers(()=>answerquestions(answer['score']),answer['text']);



            }).toList(),
          
  
          ],
        );
  }
}