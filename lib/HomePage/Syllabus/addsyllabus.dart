import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mrcp/Constant.dart';
import 'package:mrcp/HomePage/quiz/widget/general.dart';
import 'package:mrcp/HomePage/quiz/widget/syllabus.dart';

import '../popmenueButton.dart';

class addSyllabus extends StatefulWidget {
  const addSyllabus({Key? key}) : super(key: key);

  @override
  State<addSyllabus> createState() => _addSyllabusState();
}

class _addSyllabusState extends State<addSyllabus> {
  List<String> Subject = ["Maths", "Physics", "English"];
  var _initial;

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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            margin: EdgeInsets.all(5),
            height: MediaQuery.of(context).size.height/2,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withAlpha(89),
                offset: Offset(0,7),
                blurRadius: 7
              )
            ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text("Type a syllabus name"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text("Type a short details"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<dynamic>(
                      focusColor: Colors.blue,
                      isExpanded: true,
                      items: Subject.map((e) {
                        return DropdownMenuItem(value: e, child: Text(e));
                      }).toList(),
                      onChanged: (a) {
                        setState(() {
                          _initial = a;
                        });
                      },
                      hint: Text("Select Subject"),
                      value: _initial,
                    ),
                  ),
                ),

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
          ),
        ),
      ),
    );
  }
}
