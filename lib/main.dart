import 'package:flutter/material.dart';
import 'package:quiz_application_/question.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  var listQuestions = [
    'what\'s your favorite color?',
    'what\'s your favorite animal?',
    'what\'s your favorite dish?',
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
            child: Questionn(listQuestions[_questionIndex]),
          )),
    );
  }
}
