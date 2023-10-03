import 'package:flutter/material.dart';

AppBar customAppBar() {
  return AppBar(
    backgroundColor: Color(0xffF3F4FB),
      title: Text(
        'Cloud-Tribe',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      elevation: 0,
      actions: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: FlutterLogo(),
        ),
      ]);
}
