import 'dart:async';

import 'package:flutter/material.dart';
import './question.dart';
//import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionsindex = 0;
  var questions = [
    "What's your favourite color?",
    "What's your favourite animal?"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My App'),
          ),
          body: Column(
            children: <Widget>[
              Question(
                questions[_questionsindex],
              ),
              RaisedButton(
                child: Text('Ans1'),
                onPressed: _questiontab,
              ),
              RaisedButton(
                child: Text('Ans2'),
                onPressed: _questiontab,
              ),
              RaisedButton(
                child: Text('Ans3'),
                onPressed: _questiontab,
              )
            ],
          )),
    );
  }

  void _questiontab() {
    setState(() {
      _questionsindex++;
    });
    print(_questionsindex);
  }
}
