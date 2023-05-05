import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mrcp/HomePage/setting.dart';




class popMenuButton extends StatefulWidget {
  const popMenuButton({Key? key}) : super(key: key);

  @override
  State<popMenuButton> createState() => _popMenuButtonState();
}

class _popMenuButtonState extends State<popMenuButton> {
  List<String> item = ["Setting", "Tutorial"];
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        onSelected: (value){
          setState(() {
            if (value == "Setting"){
              Navigator.push(context, MaterialPageRoute(builder: (_){
                return Settings();
              }));
            }
          });
        },
        itemBuilder: (_){
          return item.map((e) {
            return PopupMenuItem(
              value: e,
              child: Text(e),);
          }).toList();
        });
  }
}
