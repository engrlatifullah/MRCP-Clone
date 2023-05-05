import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mrcp/Constant.dart';

import '../popmenueButton.dart';
import '../quiz/addQuiz.dart';
import 'addMock.dart';


class Mock extends StatefulWidget {
  const Mock({Key? key}) : super(key: key);

  @override
  State<Mock> createState() => _MockState();

}

class _MockState extends State<Mock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return addMock();
            })
            );
          });
        },
        backgroundColor: Colors.blue.shade700,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Mock Tests"),
        actions: [
          popMenuButton(),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Text(
            "No mock test created yet. Press the plus button on bottom-right to create quiz",
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
