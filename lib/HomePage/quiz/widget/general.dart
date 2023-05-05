import 'package:flutter/material.dart';

import '../../../Constant.dart';

class General extends StatefulWidget {
  const General({Key? key}) : super(key: key);

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  List<String> Subject = ["Maths", "Physics", "English"];
  var _initial;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Colors.grey.withAlpha(30),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "Subject Wise",
            style: Colour().title,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Select one or more subjects for mcqs\nselection",
            textAlign: TextAlign.center,
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
          SizedBox(
            height: 20,
          ),
          Text(
            "Select test mcqs count",
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "e.g 50",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ),
        ],
      ),
    );
  }
}
