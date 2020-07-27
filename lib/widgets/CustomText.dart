import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final text;
  final double fontSize;
  final color;
  final fontWeight;
  final textAlign;

  CustomText(this.text,
      {this.fontSize = 16,
      this.color = Colors.black54,
      this.textAlign = TextAlign.justify,
      this.fontWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: TextDecoration.none,
      ),
    );
  }
}
