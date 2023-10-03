import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sh_day2_zong_app/Views/Drawer_Bin/drawer_bin.dart';
import 'package:sh_day2_zong_app/Views/Drawer_Setting/drawer_setting.dart';
import 'package:sh_day2_zong_app/Views/SignUpScreen/sign_up.dart';
import 'package:sh_day2_zong_app/Views/Splash_Screen/splash_screen.dart';

import 'Views/Drawer_Storage/drawer_storage.dart';
import 'Views/Drawer_recent/drawer_recent.dart';
import 'Views/ForgotScreen/forgot_screen.dart';
import 'Views/Drawer_shared/shared_dialog.dart';
import 'Views/HomeScreen/home_screen.dart';
import 'Views/HomeScreen/home_screen2.dart';
import 'Views/Otp_Optiona/otp_optional.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: SplashScreen(),
        );
      },
    );
  }
}
