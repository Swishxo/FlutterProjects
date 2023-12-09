import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = "start_screen";

  /*
  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }
  */

  void switchScreen() {
    setState(() {
      activeScreen = "questions_screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenBuilder = StartScreen(switchScreen);

    if (activeScreen == "questions_screen") {
      screenBuilder = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 125, 48, 214),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenBuilder,
        ),
      ),
    );
  }
}
