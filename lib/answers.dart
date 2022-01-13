import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final void Function() onPressM;
  final String answer;

  Answers(this.onPressM, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(
          answer,
        ),
        onPressed: onPressM,
      ),
    );
  }
}
