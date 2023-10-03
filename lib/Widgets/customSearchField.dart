import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sh_day2_zong_app/Utils/app_color.dart';

class CustomSearchField extends StatelessWidget {
  String hText;
  IconData pIcon;
  IconData? sIcon;

  CustomSearchField({required this.hText, required this.pIcon, this.sIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.grey.shade300,
        filled: true,
        hintText: hText,
        hintStyle: TextStyle(
          color: AppColor.searchTextColor,
          fontSize: 14,
        ),
        prefixIcon: Icon(
          pIcon,
          color: AppColor.searchTextColor,
        ),
        suffixIcon: Icon(sIcon),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30.r),
        ),
      ),
    );
  }
}
