import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Utils/app_color.dart';
import '../../../models/my_files_model.dart';

class VerticalListViewData extends StatelessWidget {
  List<MyFileModel> _myFileModel = [
    MyFileModel(
      img: 'asset/images/gallery.png',
      titleText: 'Logo.png',
      subTitleText: '8:24 PM',
      icon: Icon(Icons.more_vert,color: Color(0xffA7B5BF),),
    ),
    MyFileModel(
      img: 'asset/images/Music.png',
      titleText: 'Faded.mp3',
      subTitleText: '8:24 PM',
      icon: Icon(Icons.more_vert,color: Color(0xffA7B5BF)),
    ),
    MyFileModel(
      img: 'asset/images/gallery.png',
      titleText: 'Flutter.png',
      subTitleText: '8:24 PM',
      icon: Icon(Icons.more_vert,color: Color(0xffA7B5BF)),
    ),
    MyFileModel(
      img: 'asset/images/Music.png',
      titleText: 'Faded.mp3',
      subTitleText: '8:24 PM',
      icon: Icon(Icons.more_vert,color: Color(0xffA7B5BF)),
    ),
    MyFileModel(
      img: 'asset/images/gallery.png',
      titleText: 'Flutter.png',
      subTitleText: '8:24 PM',
      icon: Icon(Icons.more_vert,color: Color(0xffA7B5BF),),
    ),
    MyFileModel(
      img: 'asset/images/Music.png',
      titleText: 'Faded.mp3',
      subTitleText: '8:24 PM',
      icon: Icon(Icons.more_vert,color: Color(0xffA7B5BF),),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: _myFileModel.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Container(
                height: 80.h,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: AppColor.bColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image(
                          image: AssetImage(_myFileModel[index].img),
                        ),
                      ),
                    ),
                    title: Text(
                      _myFileModel[index].titleText,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      _myFileModel[index].subTitleText,
                      style: TextStyle(
                        color: Color(0xffA7B5BF),
                      ),
                    ),
                    trailing: _myFileModel[index].icon,
                  ),
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
