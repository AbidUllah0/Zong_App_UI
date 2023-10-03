import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sh_day2_zong_app/Widgets/customSearchField.dart';

import 'components/custom_button.dart';
import 'components/shared_custom_text.dart';

class SharedDialog extends StatelessWidget {
  const SharedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
          child: Column(
            children: [
              Image(
                image: AssetImage('asset/images/shared.png'),
              ),
              SizedBox(
                height: 30.h,
              ),
              SharedCustomText(
                text: 'Share “File Name.png”',
                fSize: 16,
                color: Colors.black,
                fWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 20.h,
              ),
              SharedCustomText(
                text: 'Set a permission for your file & tap Done',
                fSize: 12,
                fWeight: FontWeight.w500,
                color: Color(0xffA7B5BF),
              ),
              SizedBox(
                height: 25.h,
              ),
              CustomSearchField(
                hText: 'Add People',
                pIcon: Icons.person_add_alt_rounded,
                sIcon: Icons.send,
              ),
              SizedBox(
                height: 30.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SharedCustomText(
                    text: 'Peoples with access',
                    fSize: 14,
                    fWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ListTile(
                    leading: Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        color: Color(0xff80BD36),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        height: 20.h,
                        width: 20.w,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            'asset/images/my_image.png',
                          ),
                        ),
                      ),
                    ),
                    title: SharedCustomText(
                      text: 'Abid Ullah (You)',
                      color: Colors.black,
                      fSize: 12,
                      fWeight: FontWeight.w500,
                    ),
                    subtitle: SharedCustomText(
                      text: '@abidullah',
                      fSize: 12,
                      fWeight: FontWeight.w500,
                      color: Color(0xffA7B5BF),
                    ),
                    trailing: SharedCustomText(
                      text: 'Owner',
                      color: Colors.black,
                      fSize: 12,
                      fWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SharedCustomText(
                      text: 'Share', fSize: 14, fWeight: FontWeight.w500,color: Colors.black,),
                  SizedBox(
                    height: 20.h,
                  ),
                  ListTile(
                    leading: Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        color: Color(0xff80BD36),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        height: 20.h,
                        width: 20.w,
                        child: Icon(
                          Icons.lock_outline_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    title: Row(
                      children: [
                        SharedCustomText(
                          text: 'Restricted',
                          fSize: 12,
                          color: Colors.black,
                          fWeight: FontWeight.w500,
                        ),
                        Icon(Icons.keyboard_arrow_down_outlined)
                      ],
                    ),
                    subtitle: SharedCustomText(
                      text: 'Only you can view this file',
                      fSize: 12,
                      fWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SharedCustomButton(
                        text: 'Copy Link',
                        btncolor: Colors.white,
                        textColor: Colors.pink,
                      ),
                      SharedCustomButton(
                        text: 'Done',
                        btncolor: Colors.pink,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
