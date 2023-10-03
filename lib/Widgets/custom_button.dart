import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sh_day2_zong_app/Utils/app_color.dart';

class CustomButton extends StatelessWidget {
  String btnText;
  VoidCallback? onPressed;

  CustomButton({required this.btnText,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 328.w,
        height: 50.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Center(
          child: Text(
            btnText,
            style: TextStyle(
              color: AppColor.bColor,
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
            ),
          ),
        ),
      ),
    );
  }
}
