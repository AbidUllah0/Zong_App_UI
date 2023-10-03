import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sh_day2_zong_app/Utils/app_color.dart';

class CustomTextField extends StatelessWidget {
  String hText;
  IconData icon;

  CustomTextField({
    required this.hText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hText,
        hintStyle: TextStyle(
          letterSpacing: 0.10,
          color: AppColor.fontColor,
          fontWeight: FontWeight.w400,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide(
              width: 2.0.w,
              color: Colors.white,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide(
              style: BorderStyle.solid,
              width: 2.0.w,
              color: Colors.white,
            )),
        prefixIcon: Container(
          margin: EdgeInsets.only(right: 20),
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Center(
            child: Icon(
              icon,
              color: AppColor.bColor,
            ),
          ),
        ),
      ),
    );
  }
}
