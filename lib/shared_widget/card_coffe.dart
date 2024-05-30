import 'package:flutter/material.dart';
import 'package:flutter_app_cafe/constant/color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardCafe extends StatelessWidget {
  CardCafe({
    super.key,
    required this.name_coffe,
    required this.size_coffe,
    required this.price_coffe,
    required this.photo_coffe,
    this.onTap,
  });

  final String name_coffe, size_coffe, price_coffe, photo_coffe;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    final imageWidth = isPortrait ? 100.w : 50.w;
    final containerWidth = isPortrait ? 100.h : 200.h;
    final containerWidth2 = isPortrait ? 110.h : 220.h;
    return Container(
        margin: EdgeInsets.only(
          bottom: 10.h,
        ),
        width: double.infinity,
        height: containerWidth2,
        child: GestureDetector(
          onTap: onTap,
          child: Stack(children: [
            Center(
              child: Container(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                width: double.infinity,
                height: containerWidth,
                decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(30.r),
                    border: Border.all(color: MyColors.grey, width: 2.w)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 70.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name_coffe,
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: MyColors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          size_coffe,
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: MyColors.black,
                          ),
                        )
                      ],
                    ),
                    Text(
                      price_coffe,
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: MyColors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              photo_coffe,
              width: imageWidth,
              height: imageWidth,
            )
          ]),
        ));
  }
}
