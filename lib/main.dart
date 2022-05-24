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
  int _totalscore = 0;

  void resetQuiz() {
    setState(() => {_questionIndex = 0});
  }

  answerQuestion(int score) {
    _totalscore += score;
    // if (_questionIndex == listQuestions.length-1) {
    //   _questionIndex = -1;
    // }
    setState(() => {_questionIndex++});

    print(_questionIndex);

    print('Answer chosen ');
    print(_totalscore);
  }

  final List<Map<String, Object>> listQuestions = [
    {
      'qstText': 'What is the output of print(10 - 4 * 2)',
      'answers': [
        {'text': '12', 'score': 10},
        {'text': '2', 'score': 21},
        {'text': '39', 'score': 4},
        {'text': '24', 'score': 30},
      ]
    },
    {
      'qstText': 'Python function always returns a value',
      'answers': [
        {'text': 'TRUE', 'score': 20},
        {'text': 'FALSE', 'score': 12}
      ]
    },
    {
      'qstText':
          'Choose the correct function to get the ASCII code of a character ',
      'answers': [
        // {'text': 'ord char', 'socre': 2},
        {'text': 'ascii char', 'score': 5},
        {'text': ' char', 'score': 29},
        {'text': 'ascii ', 'score': 1}
      ]
    },
    {
      'qstText': 'Select which is true for Python tuple',
      'answers': [
        {'text': 'A tuple maintains the order of items', 'score': 20},
        {'text': 'We can change the tuple once created', 'score': 20}
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
            child: _questionIndex < listQuestions.length
                ? Quiz(listQuestions, _questionIndex, answerQuestion)
                : Result(resetQuiz, _totalscore),
          )),
    );
  }
}
