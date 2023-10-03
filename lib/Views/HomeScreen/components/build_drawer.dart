import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sh_day2_zong_app/Views/Drawer_Bin/drawer_bin.dart';
import 'package:sh_day2_zong_app/Views/Drawer_Setting/drawer_setting.dart';
import 'package:sh_day2_zong_app/Views/Drawer_recent/drawer_recent.dart';
import 'package:sh_day2_zong_app/Views/Drawer_shared/shared_dialog.dart';

import '../../../Utils/app_color.dart';
import '../../../Widgets/custom_text.dart';
import '../../../Widgets/drawer_text.dart';
import '../../Drawer_Storage/drawer_storage.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.bColor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                border: null,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 97,
                    height: 97,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: FlutterLogo(),
                  ),
                  CustomText(
                      text: 'Abid Ullah', fSize: 18, fWeight: FontWeight.w600),
                  CustomText(
                      text: 'abid.kust2019@gmail.com',
                      fSize: 12,
                      fWeight: FontWeight.w500)
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            DrawerTextWidget(
                icon: Icons.drive_file_move_rounded, text: 'My Drive'),
            SizedBox(
              height: 25,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SharedDialog()));
                },
                child: DrawerTextWidget(
                    icon: Icons.person, text: 'Shared with me')),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DrawerRecent(),
                  ),
                );
              },
              child: DrawerTextWidget(icon: Icons.watch_later, text: 'Recent'),
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DrawerBin(),
                    ),
                  );
                },
                child: DrawerTextWidget(icon: Icons.delete, text: 'Bin')),
            SizedBox(
              height: 25,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DrawerSetting(),
                    ),
                  );
                },
                child: DrawerTextWidget(icon: Icons.settings, text: 'Setting')),
            SizedBox(
              height: 25,
            ),
            Divider(
              thickness: 3,
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DrawerStorage()));
                },
                child: DrawerTextWidget(icon: Icons.cloud, text: 'Storage')),
            SizedBox(
              height: 25,
            ),
            LinearProgressIndicator(
              minHeight: 4,
              value: 0.7,
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '13.6 GB / 15 GB',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 35.h,
              width: 116,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Upgrade',
                  style: TextStyle(
                    color: AppColor.bColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
