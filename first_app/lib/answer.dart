import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final Function _selectHandler;
  final Function _selectHandler;
  final String answerText;

  Answer(this._selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        textColor: Colors.white,
        onPressed: (_selectHandler as Function()),
      ),
    );
  }
}
