import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  // const Answer({Key? key}) : super(key: key);
  String answertext = '';
  var onbtnClick;
  Answer(this.onbtnClick,this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:10,right: 10,left: 10),
      // color: Colors.red,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.all(15))
        ) ,
        onPressed: onbtnClick,
        child:  Text(answertext,style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
