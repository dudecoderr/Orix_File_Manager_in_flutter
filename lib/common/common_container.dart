import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orix_filemanager_flutterui/constant/color_constant.dart';

class CommonContainer extends StatelessWidget {
  final String titles;
  final String subtitle;
  final String? desc;
  final String? desc1;
  final String? desc2;
  final String? imagelocation;

  const CommonContainer({
    Key? key,
    required this.titles,
    required this.subtitle,
    this.desc,
    this.desc1,
    this.desc2,
    this.imagelocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w,right: 40.w,top: 20.h,bottom: 20.h),
      height: 100.h,
      width: 315.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: kLightGreyColor,
      ),
      child: Row(
        children: [
          Image.asset(
            imagelocation!,
            height: 60.h,
            width: 60.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titles,
                style: TextStyle(fontSize: 15.sp, color: kBlackColor, fontFamily: "Mulish", fontWeight: FontWeight.w700),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 12.sp, color: kGreyColor, fontFamily: "Mulish", fontWeight: FontWeight.bold),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    desc!,
                    style: TextStyle(fontSize: 12.sp, color: kBlackColor, fontFamily: "Mulish", fontWeight: FontWeight.bold),
                  ),
                  Text(
                    desc1!,
                    style: TextStyle(fontSize: 12.sp, color: kBlackColor, fontFamily: "Mulish", fontWeight: FontWeight.bold),
                  ),
                  Text(
                    desc2!,
                    style: TextStyle(fontSize: 12.sp, color: kBlackColor, fontFamily: "Mulish", fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
