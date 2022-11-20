import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget childM1 = Container(
    // портрет
    width: 100.w,
    height: 100.h,
    color: Color.fromARGB(255, 11, 80, 13),
    child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 3.h),
      ),
      Text(
        "knock...knock...",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.sp,
          color: Colors.white,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 3.h),
      ),
      Expanded(child: Image.asset("assets/images/matrix.png")),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 3.h),
      ),
    ]));

// ландшафт
Widget childC1 = Container(
    // ландшафт
    width: 250.w,
    height: 100.h,
    color: Color.fromARGB(255, 11, 80, 13),
    child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.h),
          ),

          Image.asset(
            "assets/images/matrix.png",
            height: 120.h,
            width: 70.w,
          ),
          // ),
          SizedBox(width: 4.h),
          Text(
            "knock...knock...",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.sp,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.h),
          ),
        ]));
