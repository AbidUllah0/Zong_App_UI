import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sh_day2_zong_app/Utils/app_color.dart';
import 'package:sh_day2_zong_app/Views/HomeScreen/components/shared_row.dart';
import 'package:sh_day2_zong_app/Views/HomeScreen/components/vertical_listview_data.dart';
import 'package:sh_day2_zong_app/Widgets/custom_text.dart';
import 'package:sh_day2_zong_app/Widgets/drawer_text.dart';
import 'package:sh_day2_zong_app/models/files_model.dart';
import '../../Widgets/customAppBar.dart';
import '../../Widgets/customSearchField.dart';
import '../../Widgets/custom_storage_container.dart';
import '../../Widgets/files_text.dart';
import 'components/build_drawer.dart';
import 'components/horizontal_listview_data.dart';

class HomeScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      drawer: BuildDrawer(),
      backgroundColor: Color(0xffF3F4FB),
      floatingActionButton: Container(
        height: 72.h,
        width: 72.w,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColor.bColor,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.h),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSearchField(
                    hText: 'Search here',
                    pIcon: Icons.search,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomStorageContainer(),
                  SizedBox(
                    height: 15.h,
                  ),
                  FileText(),
                  SizedBox(
                    height: 15.h,
                  ),
                  HorizontalListViewData(),
                  SizedBox(
                    height: 20,
                  ),
                  SharedRowText(),
                  VerticalListViewData(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }




}
