import 'package:flutter/material.dart';
import 'package:quiz_application_/answer.dart';
import 'package:quiz_application_/question.dart';


class Quiz extends StatelessWidget {
   //Quiz({Key? key}) : super(key: key);

  final List<Map<String, Object>> listquestion ;
  final int questionIndex;
  final Function() answerquestionn;

  Quiz(this.listquestion,this.questionIndex,this.answerquestionn);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questionn(listquestion[questionIndex]['qstText'].toString()),
        ...(listquestion[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerquestionn, answer);
        })

      ],
    );
  }
}
