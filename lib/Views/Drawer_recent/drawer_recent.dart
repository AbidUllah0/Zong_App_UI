import 'package:flutter/material.dart';
import 'package:sh_day2_zong_app/Utils/app_color.dart';
import 'package:sh_day2_zong_app/Views/HomeScreen/components/vertical_listview_data.dart';
import 'package:sh_day2_zong_app/Widgets/customSearchField.dart';

import '../../Widgets/customAppBar.dart';

class DrawerRecent extends StatelessWidget {
  const DrawerRecent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F4FB),
      appBar: customAppBar(),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CustomSearchField(
                hText: 'Search Here',
                pIcon: Icons.search,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      )),
                  Icon(
                    Icons.grid_view_outlined,
                  )
                ],
              ),
              VerticalListViewData(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.bColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
