import 'package:flutter/cupertino.dart';

class Questions extends StatelessWidget {
  final String question;
  Questions(this.question);

  // const Questions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(15),
      child: Text(
        question,
        style: const TextStyle(
          fontSize: 35,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
