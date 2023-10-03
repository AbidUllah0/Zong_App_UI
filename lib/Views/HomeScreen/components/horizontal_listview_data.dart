import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/files_model.dart';

class HorizontalListViewData extends StatelessWidget {
  List<FileModel> _fileModel = [
    FileModel(
        color: Color(0xffF0F6EF),
        image: 'asset/images/zong.png',
        titleText: 'UI Design',
        subtitleText: '8:24 pm'),
    FileModel(
        color: Color(0xffF8E7F4),
        image: 'asset/images/zong.png',
        titleText: 'Flutter',
        subtitleText: '8:24 pm'),
    FileModel(
        color: Color(0xffF0F6EF),
        image: 'asset/images/zong.png',
        titleText: 'Laravel',
        subtitleText: '8:24 pm'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175.h,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _fileModel.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(left: 10),
            height: 175.h,
            width: 140.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: _fileModel[index].color,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  _fileModel[index].image,
                  width: 24.w,
                  height: 24.h,
                ),
                Column(
                  children: [
                    Text(
                      _fileModel[index].titleText,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(_fileModel[index].subtitleText),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
