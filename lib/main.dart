import 'package:flutter/material.dart';
import 'package:flutter_app_cafe/page1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return const MaterialApp(
        home: OnBoardScreen(),
      );
    });
  }
}
