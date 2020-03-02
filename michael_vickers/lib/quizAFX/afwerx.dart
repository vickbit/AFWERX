import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyQuizApp());

class MyQuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyQuizAppState();
  }
}

class _MyQuizAppState extends State<MyQuizApp> {
  final _questions = const [

    {
      'questionText': 'Michael Vickers is looking to work on the AFWERX Team!',
      'answers': [
        {'text': 'We are looking for you!', 'score': 10},
        {'text': 'The team needs you!', 'score': 10},
      ],
    },
     {
      'questionText': 'Problem solving and critial thinking are everyday skills!',
      'answers': [
        {'text': 'Complex task made easy', 'score': 10},
        {'text': 'Problem layered and knocked out 1 at a time', 'score': 10},
      ],
    },
     {
      'questionText': 'Seeking a strong team and dynamic work force!',
      'answers': [
        {'text': 'Yes We Are!', 'score': 10},
        {'text': 'Problem solved in here', 'score': 10},
      ],
    },

     {
      'questionText': 'Seeking to share the best ideas that build upon leader priorities that AFWERX seeks to resolve with all readiness challenges: this will increase the lethality of the force and drive innovation to secure AFWERXs\'s future!',
      'answers': [
        {'text': 'Michael Vickers', 'score': 10},
        {'text': 'Michael Vickers', 'score': 10},
      ],
    },
     {
      'questionText': 'AFWERX has the answers we all need!!',
      'answers': [
        {'text': 'We all know it!', 'score': 10},
        {'text': 'AFWERX Spark Tanks', 'score': 10},
      ],
    },
     {
      'questionText': 'Should you be looking any further?',
      'answers': [
        {'text': 'You know the right person to call', 'score': 10},
        {'text': 'No points for looking further', 'score': 10},
      ],
    },
     {
      'questionText': 'Your time is valuable and I think you for it!!',
      'answers': [
        {'text': 'You work hard!', 'score': 10},
        {'text': 'LEt me help build the team as well', 'score': 10},
      ],
    },
     {
      'questionText': 'Thank you AFWERX for your time!',
      'answers': [
        {'text': 'Thank you', 'score': 10},
        {'text': 'Thank you', 'score': 10},
      ],
    },
     {
      'questionText': 'Give me a call / email back and lets talk!',
      'answers': [
        {'text': 'Call Back', 'score': 10},
        {'text': 'Email', 'score': 10},
      ],
    },

  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
