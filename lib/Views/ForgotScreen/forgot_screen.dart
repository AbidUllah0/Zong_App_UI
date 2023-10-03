import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:sh_day2_zong_app/Utils/app_color.dart';
import 'package:sh_day2_zong_app/Views/LoginScreen/login_screen.dart';
import 'package:sh_day2_zong_app/Widgets/custom_button.dart';
import 'package:sh_day2_zong_app/Widgets/custom_text.dart';

import '../../Widgets/customTextField.dart';
import '../../Widgets/custom_container.dart';
import '../Otp_Optiona/otp_optional.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.bColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomContainer(),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
                text: 'Forgot Password!', fSize: 20, fWeight: FontWeight.w600),
            SizedBox(
              height: 15,
            ),
            CustomText(
                text:
                    'Provide your email & we will send you link to reset password',
                fSize: 12,
                fWeight: FontWeight.w500),
            SizedBox(
              height: 100.h,
            ),
            CustomTextField(
              hText: 'Email',
              icon: Icons.person_outline_outlined,
            ),
            // PinInputTextField(
            //   decoration: UnderlineDecoration(
            //     colorBuilder: PinListenColorBuilder(
            //       Colors.black,
            //       Colors.white,
            //     ),
            //     textStyle: TextStyle(fontSize: 20),
            //   ),
            // ),
            SizedBox(
              height: 100.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OPTOptionalScreen(),
                  ),
                );
              },
              child: CustomButton(
                btnText: 'Send OTP',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              child: CustomText(
                  text: 'Remembered Password? Login Now ',
                  fSize: 12,
                  fWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
