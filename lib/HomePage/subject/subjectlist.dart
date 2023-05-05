import 'package:flutter/material.dart';
import 'package:mrcp/Constant.dart';

import '../popmenueButton.dart';

class subjectList extends StatefulWidget {
  const subjectList({Key? key}) : super(key: key);

  @override
  State<subjectList> createState() => _subjectListState();
}

class _subjectListState extends State<subjectList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Subject"),
        actions: [
          popMenuButton(),
        ],
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return  ListTile(
          horizontalTitleGap: 20,
          tileColor: Colors.white,
          contentPadding: EdgeInsets.all(10),
          leading: Container(
            height: 120,
            width: 80,
            color: Colors.blueAccent,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.menu,color: Colors.blue,size: 30,),
            ),
          ),
          title: Text("Cardiology",style: TextStyle(color: Colors.blue,fontSize: 20)),
        );
      }),
    );
  }
}
