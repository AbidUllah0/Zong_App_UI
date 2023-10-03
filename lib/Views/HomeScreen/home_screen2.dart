import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sh_day2_zong_app/Views/HomeScreen/components/grid_vert_data.dart';
import 'package:sh_day2_zong_app/Views/HomeScreen/components/shared_row.dart';
import '../../Widgets/customSearchField.dart';
import '../../Widgets/custom_storage_container.dart';
import '../../Widgets/files_text.dart';
import 'components/build_drawer.dart';
import 'components/custom_file_data.dart';

class HomeScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: BuildDrawer(),
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: Text(
          'Cloud-Tribe',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
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
              CustomFileData(),
              SizedBox(
                height: 20,
              ),
              SharedRowText(),
              SizedBox(
                height: 15,
              ),
              GridVertData(),
            ],
          ),
        ),
      ),
    );
  }
}
