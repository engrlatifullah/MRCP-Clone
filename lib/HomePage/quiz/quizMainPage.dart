import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mrcp/Constant.dart';

import '../popmenueButton.dart';
import 'addQuiz.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();

}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return addQuiz();
            })
            );
          });
        },
        backgroundColor: Colors.blue.shade700,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Quizzes"),
        actions: [
          popMenuButton(),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Text(
            "No quiz created yet. Press the plus button on bottom-right to create quiz",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colour().blueColor,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
