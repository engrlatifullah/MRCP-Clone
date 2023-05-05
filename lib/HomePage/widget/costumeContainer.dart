import 'package:flutter/material.dart';
class costumeContainer extends StatelessWidget {
  final double ? height;
  final double ? width;
  final Widget ? child;
  const costumeContainer({this.height, this.width, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 0,
                blurRadius: 5,
                offset: Offset(0,2)
            )
          ]),
      child: child,
    );
  }
}
