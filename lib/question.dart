import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'main.dart';

class Questionn extends StatelessWidget {
  //sconst Questionn({Key? key}) : super(key: key);
  final String questionText;
  Questionn(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 25, color: b),
        textAlign: TextAlign.center,
      ),
    );
  }
}
