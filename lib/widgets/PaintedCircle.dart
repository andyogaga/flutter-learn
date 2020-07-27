import 'package:flutter/material.dart';

class Circle extends StatefulWidget {
  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: 36,
        width: 36,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
                width: 2.0,
                style: BorderStyle.solid,
                color: const Color(0xFF000000))),
      ),
    );
  }
}
