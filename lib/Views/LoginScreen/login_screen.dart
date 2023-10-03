import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sh_day2_zong_app/Utils/app_color.dart';
import 'package:sh_day2_zong_app/Views/ForgotScreen/forgot_screen.dart';
import 'package:sh_day2_zong_app/Views/HomeScreen/home_screen.dart';
import 'package:sh_day2_zong_app/Views/SignUpScreen/sign_up.dart';
import 'package:sh_day2_zong_app/Widgets/customTextButton.dart';
import 'package:sh_day2_zong_app/Widgets/custom_button.dart';
import 'package:sh_day2_zong_app/Widgets/custom_container.dart';
import 'package:sh_day2_zong_app/Widgets/custom_text.dart';

import '../../Widgets/customTextField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomContainer(),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              text: 'Welcome Back!',
              fSize: 20,
              fWeight: FontWeight.w600,
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomText(
              text: 'Login to your account',
              fSize: 12,
              fWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomTextField(
              hText: 'User Name',
              icon: Icons.person_outline_outlined,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomTextField(
              hText: 'Password',
              icon: Icons.lock,
            ),
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgotScreen(),
                    ),
                  );
                },
                child: CustomTextButton(
                  text: 'Forgot Password?',
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              btnText: 'LOGIN',
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomTextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUp(),
                  ),
                );
              },
              text: 'Not have an account? Signup Now ',
            ),
          ],
        ),
      ),
    );
  }
}
