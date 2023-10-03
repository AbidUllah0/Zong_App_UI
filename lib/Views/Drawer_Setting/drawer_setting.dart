import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sh_day2_zong_app/Utils/app_color.dart';

class DrawerSetting extends StatelessWidget {
  List settingData = [
    [
      Icons.person,
      'Account',
      Icons.arrow_forward_ios_outlined,
    ],
    [
      Icons.notification_important,
      'notification',
      Icons.arrow_forward_ios_outlined,
    ],
    [
      Icons.sd_storage,
      'Storage',
      Icons.arrow_forward_ios_outlined,
    ],
    [
      Icons.logout,
      'Logout',
      Icons.arrow_forward_ios_outlined,
    ],
  ];

  @override
  Widget build(BuildContext context) {
    bool availableData = true;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF9FAFE),
          title: Text(
            'Cloud-Tribe',
          ),
          actions: [
            Icon(
              Icons.arrow_back_ios_new,
            ),
          ],
        ),
        backgroundColor: Color(0xffF9FAFE),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                'Setting',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: 400,
                child: ListView.builder(
                  itemCount: settingData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 80.h,
                        width: 378.w,
                        child: Card(
                          color: Colors.white,
                          child: ListTile(
                            leading: Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                color: AppColor.bColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Icon(
                                  settingData[index][0],
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            title: Text(
                              settingData[index][1],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff162A43)),
                            ),
                            trailing: Icon(
                              settingData[index][2],
                              color: Color(0xffA7B5BF),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
