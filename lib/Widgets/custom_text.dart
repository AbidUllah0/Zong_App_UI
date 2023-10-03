import 'package:flutter/material.dart';
import 'package:sh_day2_zong_app/Utils/app_color.dart';

class CustomText extends StatelessWidget {
  String text;
  double fSize;
  FontWeight fWeight;

  CustomText({
    required this.text,
    required this.fSize,
    required this.fWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: fSize,
            fontWeight: fWeight,
          color: AppColor.fontColor,
          ),
        ),
      ],
    );
  }
}
