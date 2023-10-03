import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sh_day2_zong_app/Widgets/customTextButton.dart';
import 'package:sh_day2_zong_app/Widgets/customTextField.dart';
import 'package:sh_day2_zong_app/Widgets/custom_button.dart';
import 'package:sh_day2_zong_app/Widgets/custom_container.dart';
import 'package:sh_day2_zong_app/Widgets/custom_text.dart';

import '../../Utils/app_color.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomContainer(),
          SizedBox(
            height: 20.h,
          ),
          CustomText(text: 'SIGN UP!', fSize: 20, fWeight: FontWeight.w600),
          SizedBox(
            height: 15.h,
          ),
          CustomText(
              text: 'Create an account', fSize: 12, fWeight: FontWeight.w500),
          SizedBox(
            height: 60.h,
          ),
          CustomTextField(
              hText: 'User Name', icon: Icons.person_outline_outlined),
          SizedBox(
            height: 15.h,
          ),
          CustomTextField(hText: 'Email', icon: Icons.email),
          SizedBox(
            height: 15.h,
          ),
          CustomTextField(hText: 'Password', icon: Icons.lock),
          SizedBox(
            height: 80.h,
          ),
          CustomButton(btnText: 'SIGN UP'),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: CustomTextButton(
                  text: 'Already have an account? Login Now ')),
        ],
      ),
    );
  }
}
