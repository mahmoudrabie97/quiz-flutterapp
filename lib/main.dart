
import 'package:ccolour_fav/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
   final _questions = const  [
     {'questiontext':'what is your favourite colour',
     'answers':[{'text':'Black','score':5},{'text':'Red','score':7},{'text':'Yellow','score':3},{'text':'White','score':1}]
     },
     {'questiontext':'what is your favourite animal',
     'answers':[{'text':'Snake','score':4},{'text':'Elephant','score':6},{'text':'Cat','score':7} ,{'text':'Donkey ','score':3}]
     },
     {'questiontext':'what is your favourite instractor ',
     'answers':[{'text':'Max','score':4},{'text':'Angela','score':8},{'text':'Program world ','score':5},{'text':'code star2','score':4}]
     },


    ];

  int _questionindex = 0;
  var _totalscore=0;
  void _resetquiz()
  {
setState(() 
{
  _questionindex = 0;
   _totalscore=0;
  
});

  }

  void _answerquestions(int score) {
    _totalscore=_totalscore+score;
    
    setState(() {
      _questionindex++;
    });
    print(_questionindex);
    if(_questionindex<_questions.length)
    {
      print("we are more question");

    }
    else 
    {
      print('no more questions ');
    }
  }

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello to first app'),
        ),
        body:_questionindex<_questions.length
        ? Quiz(answerquestions: _answerquestions, questions: _questions, questionindex: _questionindex)

       : Result(_totalscore,_resetquiz),

      ),
    );
  }
}
