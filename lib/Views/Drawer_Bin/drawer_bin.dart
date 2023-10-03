import 'package:flutter/material.dart';
import 'package:sh_day2_zong_app/Views/Drawer_recent/drawer_recent.dart';
import 'package:sh_day2_zong_app/Views/HomeScreen/components/vertical_listview_data.dart';
import 'package:sh_day2_zong_app/Widgets/customAppBar.dart';
import 'package:sh_day2_zong_app/Widgets/customSearchField.dart';

class DrawerBin extends StatelessWidget {
  const DrawerBin({super.key});

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
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recycle Bin',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
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
    );
  }
}
