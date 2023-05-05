import 'package:flutter/material.dart';

import '../popmenueButton.dart';

class searchPage extends StatefulWidget {
  const searchPage({Key? key}) : super(key: key);

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        actions: [
          popMenuButton(),
        ],
      ),
      body: TextField(
        decoration: InputDecoration(
          fillColor: Colors.grey.withAlpha(50),
          filled: true,
          label: Text("Type to search"),
          suffixIcon: Icon(Icons.keyboard_voice, color: Colors.blue,size: 30,)
        ),
      ),
    );
  }
}
