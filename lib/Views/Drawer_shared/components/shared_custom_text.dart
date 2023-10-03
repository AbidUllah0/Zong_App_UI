import 'package:flutter/material.dart';

class SharedCustomText extends StatelessWidget {
  String text;
  double? fSize;
  FontWeight fWeight;
  Color? color;

  SharedCustomText(
      {required this.text, required this.fSize, required this.fWeight,this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fSize,
        fontWeight: fWeight,
        color: color,
      ),
    );
  }
}
