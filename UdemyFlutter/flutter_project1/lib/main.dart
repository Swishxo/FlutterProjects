import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

//function shorthand
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex =
      0; //underscore turn properties and methods into private properties

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  void answerQuestion2() {
    print('answer 2 choosen');
  }

  void answerQuestion3() {
    print('answer 3 choosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questiontext': 'Whats your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'Yellow', 'Blue'],
      },
      {
        'questiontext': 'Whats your favorite Animal?',
        'answers': ['Cat', 'Dog', 'Elephant', 'Monkey', 'Fish'],
      },
      {
        'questiontext': 'Your Favorite Music Artist?',
        'answers': ['Drake', 'Nicki', 'Kendrick', 'Uzi', 'Future'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First Application'),
        ),
        body: Column(
          children: [
            Question(
              questionText: questions[_questionIndex]['questiontext'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<String> ).map((answer) => 
              Answer(selectHandler: _answerQuestion, answerText: answer)).toList()
          ],
        ),
      ),
    );
  }
}
