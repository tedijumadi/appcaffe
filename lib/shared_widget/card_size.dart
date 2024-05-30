import 'package:flutter/material.dart';
import 'package:flutter_app_cafe/constant/color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardSize extends StatelessWidget {
  CardSize({
    super.key,
    required this.size_name_coffe,
    required this.size_coffe,
    this.onTap,
    required this.selected,
  });

  final String size_name_coffe, size_coffe;
  void Function()? onTap;

  final String selected;

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final containerWidth = isPortrait ? 90.w : 100.w;
    final containerHeight = isPortrait ? 100.w : 50.w;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: containerWidth,
        height: containerHeight,
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(
            color: selected == size_name_coffe ? MyColors.black : MyColors.grey,
            width: 2.w,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              size_name_coffe,
              style: TextStyle(
                fontSize: isPortrait ? 20.sp : 15.sp,
                color: MyColors.black,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              size_coffe,
              style: TextStyle(
                fontSize: isPortrait ? 15.sp : 10.sp,
                color: MyColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
