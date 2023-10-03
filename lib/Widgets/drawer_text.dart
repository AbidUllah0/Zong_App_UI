import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerTextWidget extends StatelessWidget {
  IconData icon;
  String text;

  DrawerTextWidget({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 26,
          color: Colors.white,
        ),
        SizedBox(width: 25.w,),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
