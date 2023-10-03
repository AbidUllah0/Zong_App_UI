import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_screen2.dart';

class SharedRowText extends StatelessWidget {
  const SharedRowText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'My File',
          style: TextStyle(
            color: Colors.pink,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Text(
          'Shared',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: 200.w,
        ),
        InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen2()),
              );
            },
            child: Icon(Icons.grid_view_outlined)),
      ],
    );
  }
}
