import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sh_day2_zong_app/Widgets/drawer_text.dart';

class DrawerStorage extends StatelessWidget {
  List<PieChartSectionData> data = [
    PieChartSectionData(title: 'A', color: Colors.red),
    PieChartSectionData(title: 'B', color: Colors.blue),
    PieChartSectionData(title: 'C', color: Colors.black),
    PieChartSectionData(title: 'D', color: Colors.yellow),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          children: [
            PieChart(
              PieChartData(
                centerSpaceColor: Colors.pink,
                pieTouchData: PieTouchData(
                  enabled: true,
                  longPressDuration: Duration(milliseconds: 800),
                ),
                sections: data,
                centerSpaceRadius: 10,
                sectionsSpace: 4,
                startDegreeOffset: 100,
                borderData: FlBorderData(
                  border: Border.all(
                    color: Colors.pink,
                    width: 2,
                    strokeAlign: BorderSide.strokeAlignInside,
                  ),
                  show: true,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
