import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The question',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            text: 'Answer 1',
            onTap: () {},
          ),
          AnswerButton(
            text: 'Answer 2',
            onTap: () {},
          ),
          AnswerButton(
            text: 'Answer 3',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
