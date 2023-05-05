import 'package:flutter/material.dart';

import '../../Constant.dart';
import 'costumeContainer.dart';

final Colour colour = Colour();

class costumContinerInsight extends StatelessWidget {
  final IconData ? icon;
  final String ? title;
  final String ? subTitle;
  const costumContinerInsight({this.icon, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return costumeContainer(
      child: Row(
        children: [
          Icon(
            icon,
            size: 40,
            color: Colors.blue,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            children: [
              SizedBox(height: 10),
              Text(
                title!,
                textAlign: TextAlign.center,
                style: colour.title,
              ),
              SizedBox(height: 10,),
              Text(
                subTitle!,
                textAlign: TextAlign.center,
                style: colour.subTitle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
