import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SharedCustomButton extends StatelessWidget {
  String text;
  Color? textColor;
  Color? btncolor;

  SharedCustomButton({required this.text, this.btncolor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41.h,
      width: 151.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.pink,
        ),
        color: btncolor,
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
          color: textColor,
        ),
      )),
    );
  }
}
