import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../color_constant.dart';

class MenuConstant extends StatelessWidget {
  final String? titles;
  final String? songtypes;
  final IconData? menus;

  const MenuConstant({Key? key,  this.titles,  this.songtypes,  this.menus}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100.h,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),  color: kLightGreyColor,),
      padding:  EdgeInsets.only(left: 20.w,right: 10.w),
      child: Row(
        children: [
          Container(
            height: 45.h,
            width: 45.h,
            decoration: BoxDecoration(
              color: kYellowColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(
              menus!,
              size: 25.sp,
              color: kWhiteColor,
            ),
          ),
          //=============== navigat screen =================
          Padding(
            padding: EdgeInsets.only(top: 30.h, left: 20.w),
            child: GestureDetector(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   titles!,
                    style: TextStyle(fontFamily: "Mulish", fontSize: 15.sp, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                   songtypes!,
                    style: TextStyle(fontSize: 12.sp,color: kGreyColor,fontFamily: "Mulish", fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
