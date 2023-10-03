import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:sh_day2_zong_app/Utils/app_color.dart';
import 'package:sh_day2_zong_app/Widgets/customTextButton.dart';
import 'package:sh_day2_zong_app/Widgets/custom_button.dart';
import 'package:sh_day2_zong_app/Widgets/custom_container.dart';
import 'package:sh_day2_zong_app/Widgets/custom_text.dart';

class OPTOptionalScreen extends StatelessWidget {
  const OPTOptionalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.bColor,
      body: Padding(
        padding: EdgeInsets.only(left: 50.h, right: 50.h),
        child: Column(
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
              height: 15.h,
            ),
            CustomText(
                text: 'Enter OTP, we have send it to your Email you entered',
                fSize: 12,
                fWeight: FontWeight.w500),
            SizedBox(
              height: 100.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: CustomText(
                  text: 'Enter OTP', fSize: 16, fWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 5,
            ),
            Pinput(
              keyboardType: TextInputType.phone,
              length: 4,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
            // PinInputTextField(
            //   pinLength: 4,
            //   decoration: UnderlineDecoration(
            //     colorBuilder: PinListenColorBuilder(Colors.black, Colors.red),
            //   ),
            // ),
            SizedBox(
              height: 100.h,
            ),
            CustomButton(btnText: 'Reset'),
            SizedBox(
              height: 20.h,
            ),
            CustomTextButton(text: 'Remembered Password? Login Now '),
          ],
        ),
      ),
    ));
  }
}
