import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function resetquest;
  Result(this.resultscore,this.resetquest);
  String get resultphase {
    String resulttext = '';
    if (resultscore <= 12) {
      resulttext = 'you are asomeone and and incorrect ';
    } else if (resultscore <= 16) {
      resulttext = 'pettery linkible';
    } else if (resultscore <= 19) {
      resulttext = 'you are good';
    } else {
      resulttext = 'very bad';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultphase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(onPressed: resetquest,child: Text('restart Quize'),color: Colors.amber,)
        ],
      ),
    );
  }
}
