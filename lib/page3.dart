import 'package:flutter/material.dart';
import 'package:flutter_app_cafe/constant/color.dart';
import 'package:flutter_app_cafe/shared_widget/card_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({
    super.key,
    required this.name_coffe,
    required this.size_coffe,
    required this.price_coffe,
    required this.photo_coffe,
  });

  final String name_coffe, size_coffe, price_coffe, photo_coffe;
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  String selected = "";
  int qty = 0;

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: MyColors.pink,
      appBar: AppBar(
        backgroundColor: MyColors.black,
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 20,
              top: 10,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Stack(
              children: [
                Container(
                  width: 150.w,
                  height: 150.w,
                  decoration: BoxDecoration(
                    color: MyColors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
                Image.asset(
                  widget.photo_coffe,
                  width: 150.w,
                  height: 150.w,
                ),
              ],
            ),
            Text(
              widget.name_coffe,
              style: TextStyle(
                fontSize: isPortrait ? 30.sp : 20.sp,
                color: MyColors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              widget.price_coffe,
              style: TextStyle(
                fontSize: isPortrait ? 30.sp : 20.sp,
                color: MyColors.black,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardSize(
                  size_name_coffe: "SmallL",
                  size_coffe: "250ml",
                  selected: selected,
                  onTap: () {
                    setState(() {
                      selected = "Small";
                    });
                  },
                ),
                CardSize(
                  size_name_coffe: "Medium",
                  size_coffe: "350ml",
                  selected: selected,
                  onTap: () {
                    setState(() {
                      selected = "Medium";
                    });
                  },
                ),
                CardSize(
                  size_name_coffe: "Large",
                  size_coffe: "400ml",
                  selected: selected,
                  onTap: () {
                    setState(() {
                      selected = "Large";
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              width: isPortrait ? 200.w : 120.w,
              height: isPortrait ? 50.h : 100.h,
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(18.r),
                border: Border.all(color: MyColors.grey, width: 2.w),
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        qty--;
                      });
                    },
                    child: Container(
                      width: 50.w,
                      height: 50.w,
                      decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(color: MyColors.grey, width: 2.w),
                      ),
                      child: Icon(Icons.remove, color: MyColors.orange),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      qty.toString(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        qty++;
                      });
                    },
                    child: Container(
                      width: 50.w,
                      height: 50.w,
                      decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(color: MyColors.grey, width: 2.w),
                      ),
                      child: Icon(Icons.add, color: MyColors.orange),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}
