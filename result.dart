import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int resultscore;
  final VoidCallback resetquiz;

  result(this.resultscore, this.resetquiz);

  String get resultphrase {
    var resulttext = "you did it ";
    if (resultscore >= 20) {
      resulttext = "you did very well";
    } else if (resultscore <= 10) {
      resulttext = "you are a little bad";
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultphrase),
          FlatButton(onPressed: resetquiz, child: Text("Restart the Quiz")),
        ],
      ),
    );
  }
}
