import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sh_day2_zong_app/Utils/app_color.dart';
import 'package:sh_day2_zong_app/Utils/app_images.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 157.h,
      width: 186.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Image(
        image: AssetImage(AppImages.zong_app_logo),
      ),
    );
  }
}
