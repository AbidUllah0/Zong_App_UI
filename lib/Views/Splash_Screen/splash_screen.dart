import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sh_day2_zong_app/Utils/app_images.dart';
import 'package:sh_day2_zong_app/Views/LoginScreen/login_screen.dart';

import '../../Utils/app_color.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.bColor,
        body: Center(
          child: Image(
            image: AssetImage(
              AppImages.appLogo,
            ),
          ),
        ),
      ),
    );
  }
}
