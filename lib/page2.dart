import 'package:flutter/material.dart';
import 'package:flutter_app_cafe/constant/color.dart';
import 'package:flutter_app_cafe/page3.dart';
import 'package:flutter_app_cafe/shared_widget/card_coffe.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/cat.png",
            width: 350.w,
            height: 350.h,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(30),
              width: double.infinity,
              height: 400.h,
              decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r),
                  )),
              child: ListView(children: [
                CardCafe(
                  name_coffe: "Expresso",
                  size_coffe: "250ml",
                  price_coffe: "\$12",
                  photo_coffe: "assets/images/botol1.png",
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CounterScreen(
                            name_coffe: "Expresso",
                            size_coffe: "250ml",
                            price_coffe: "\$12",
                            photo_coffe: "assets/images/botol1.png"),
                      )),
                ),
                CardCafe(
                  name_coffe: "Americano",
                  size_coffe: "250ml",
                  price_coffe: "\$12",
                  photo_coffe: "assets/images/botol3.png",
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CounterScreen(
                          name_coffe: "Americano",
                          size_coffe: "250ml",
                          price_coffe: "\$12",
                          photo_coffe: "assets/images/botol3.png",
                        ),
                      )),
                ),
                CardCafe(
                  name_coffe: "Latte",
                  size_coffe: "250ml",
                  price_coffe: "\$15",
                  photo_coffe: "assets/images/botol2.png",
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CounterScreen(
                          name_coffe: "Latte",
                          size_coffe: "250ml",
                          price_coffe: "\$15",
                          photo_coffe: "assets/images/botol2.png",
                        ),
                      )),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
