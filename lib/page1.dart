import 'package:flutter/material.dart';
import 'package:flutter_app_cafe/constant/color.dart';
import 'package:flutter_app_cafe/page2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    final buttonWidth = isPortrait ? 80.h : 200.h;

    return Scaffold(
      backgroundColor: MyColors.pink,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Image.asset(
              "assets/images/cat.png",
              width: 350.w,
              height: 350.h,
            ),
            Text(
              "Cat Cafe",
              style: TextStyle(
                color: MyColors.white,
                fontSize: isPortrait ? 40.sp : 30.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "You can be sure that you come to\nyour friend who are always glad\nto see you. ---",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: MyColors.white,
                fontSize: isPortrait ? 20.sp : 16.sp,
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            SizedBox(
              height: buttonWidth,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DashboardScreen(),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(
                    bottom: 25,
                    left: 15,
                    right: 15,
                  ),
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  width: double.infinity,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: MyColors.brown,
                  ),
                  child: Center(
                    child: Text(
                      "Buy A Coffee",
                      style: TextStyle(
                        color: MyColors.white,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
