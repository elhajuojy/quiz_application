import 'package:flutter/material.dart';
import 'package:quiz_application_/question.dart';
import 'package:quiz_application_/answer.dart';
import 'package:quiz_application_/quiz.dart';
import 'package:quiz_application_/resluts.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;


  void resetQuiz(){
    setState(() => {_questionIndex=0});
  }

  answerQuestion() {
    // if (_questionIndex == listQuestions.length-1) {
    //   _questionIndex = -1;
    // }
    setState(() => {_questionIndex++});

    print(_questionIndex);


    print('Answer chosen ');
  }

  final List<Map<String, Object>> listQuestions = [
    {
      'qstText': 'What is the output of print(10 - 4 * 2)',
      'answers': [
        '12',
        '2',
        '39',
        '24'
      ]
    },
    {
      'qstText': 'Python function always returns a value',
      'answers': [
        'TRUE',
        'FALSE',

      ]
    },
    {
      'qstText': 'Choose the correct function to get the ASCII code of a character ',
      'answers': [
        'ord char',
        'ascii char',

      ]
    },
    {
      'qstText': 'Select which is true for Python tuple',
      'answers': [
        'A tuple maintains the order of items',
        'We can change the tuple once created',
        'A tuple is unordered0'

      ]
    },
    {
      'qstText': 'What is the type of the following variable : x = -5j',
      'answers': [
        "int",
        "real",
        "imaginary"

      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz app'),
          ),
          body: Container(
            // width: double.infinity,
            child: _questionIndex<listQuestions.length?
            Quiz(listQuestions, _questionIndex, answerQuestion)
                :Result(resetQuiz),
          )),
    );
  }
}
