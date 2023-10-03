import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  String text;
  VoidCallback? onPressed;

  CustomTextButton({required this.text,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, letterSpacing: 0.10),
      ),
    );
  }
}
