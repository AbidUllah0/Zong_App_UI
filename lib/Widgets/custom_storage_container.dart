import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sh_day2_zong_app/Utils/app_images.dart';
import 'package:sh_day2_zong_app/Widgets/custom_text.dart';

import '../Utils/app_color.dart';

class CustomStorageContainer extends StatelessWidget {
  const CustomStorageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 378.w,
      height: 116.h,
      decoration: BoxDecoration(
        color: AppColor.bColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(3),
                margin: EdgeInsets.all(10),
                height: 55.h,
                width: 55.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r)),
                child: Center(
                  child: Image(
                    image: AssetImage(
                      AppImages.zong_app_logo,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  CustomText(
                    text: 'Free Storage',
                    fSize: 16,
                    fWeight: FontWeight.w600,
                  ),
                  CustomText(
                      text: '13.6 GB / 15 GB',
                      fSize: 12,
                      fWeight: FontWeight.w500),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
            child: LinearProgressIndicator(
              value: 0.7,
              color: Colors.white,
              minHeight: 4,
            ),
          ),
        ],
      ),
    );
  }
}
