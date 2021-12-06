import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questiontext;

  Questions(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Text(
          questiontext,
          style: TextStyle(fontSize: 20 ),
          textAlign: TextAlign.center,

        ));
  }
}
