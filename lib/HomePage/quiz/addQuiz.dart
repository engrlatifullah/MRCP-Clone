import 'package:flutter/material.dart';
import 'package:mrcp/Constant.dart';
import 'package:mrcp/HomePage/quiz/widget/general.dart';
import 'package:mrcp/HomePage/quiz/widget/syllabus.dart';

import '../popmenueButton.dart';

class addQuiz extends StatefulWidget {
  const addQuiz({Key? key}) : super(key: key);

  @override
  State<addQuiz> createState() => _addQuizState();
}

class _addQuizState extends State<addQuiz> {
  Color activeColor = Colors.blue;
  Color inActiveColor = Colors.grey;
  bool general = true;
  bool syllabus = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Practice Quiz"),
        actions: [
          popMenuButton(),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: Colors.grey.withAlpha(30))),
            child: Column(
              children: [
                Text(
                  "Select Mcqs From:",
                  style: TextStyle(color: Colour().blueColor, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            general = true;
                            syllabus = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),topLeft: Radius.circular(5)),
                              border: Border.all(
                                  width: 1,
                                  color:
                                      general ? activeColor : inActiveColor)),
                          child: Text(
                            "GENERAL",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: general ? activeColor : inActiveColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            syllabus = true;
                            general = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),topRight: Radius.circular(5)),
                              border: Border.all(
                                  width: 1,
                                  color:
                                      syllabus ? activeColor : inActiveColor)),
                          child: Text(
                            "SYLLABUS",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: syllabus ? activeColor : inActiveColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          general ? General() : syllabusClass(),
      Container(
        height: 50,
        width: 380,
        padding: EdgeInsets.only(left: 10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blue,
            border: Border.all(width: 1,color: Colors.grey),
            borderRadius: BorderRadius.circular(5)
        ),
        child: TextButton(
          onPressed: (){},
          child: Text("Start", style: TextStyle(
            color: Colors.white, fontSize: 20,
          )),
        ),
      )

        ],
      ),
    );
  }
}
