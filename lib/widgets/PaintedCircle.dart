import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({
    Key key,
    this.filled = false,
    this.setPosition,
  }) : super(key: key);

  final bool filled;
  final Function setPosition;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: InkWell(
          child: new Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: filled ? Colors.black12 : Colors.transparent,
                border: Border.all(
                    width: 2.0,
                    style: BorderStyle.solid,
                    color: const Color(0xFF000000))),
          ),
          onTap: setPosition,
        ));
  }
}
