import 'package:flutter/material.dart';

import '../../../Utils/app_color.dart';
import '../../../models/my_files_model.dart';

class GridVertData extends StatelessWidget {
  List<MyFileModel> _myFileModel = [
    MyFileModel(
      img: 'asset/images/gallery.png',
      titleText: 'Logo.png',
      subTitleText: '8:24 PM',
      icon: Icon(Icons.more_vert),
    ),
    MyFileModel(
      img: 'asset/images/Music.png',
      titleText: 'Foded.mp3',
      subTitleText: '8:24 PM',
      icon: Icon(Icons.more_vert),
    ),
    MyFileModel(
      img: 'asset/images/gallery.png',
      titleText: 'Logo.Png',
      subTitleText: '8:24 PM',
      icon: Icon(Icons.more_vert),
    ),
    MyFileModel(
      img: 'asset/images/Music.png',
      titleText: 'Foded.mp3',
      subTitleText: '8:24 PM',
      icon: Icon(Icons.more_vert),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemBuilder: (context, index) {
            return Container(
              height: 160,
              width: 182,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Card(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColor.bColor,
                      ),
                      child: Image(
                        image: AssetImage(
                          _myFileModel[index].img,
                        ),
                        width: 23,
                        height: 23,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        _myFileModel[index].titleText,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        _myFileModel[index].titleText,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      trailing: _myFileModel[index].icon,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
