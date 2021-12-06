import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback selecthandler;
  final String answertext;

  Answers(this.selecthandler, this.answertext);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        onPressed: selecthandler,
        child: Text(answertext),
        color: Colors.blue,
      ),
    );
  }
}
