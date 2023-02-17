import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
import '../../constant/list/figma_file_constant.dart';
import '../../constant/list/listview_dribble_constant.dart';
import '../../constant/string_constant.dart';

class FigmaFilePage extends StatefulWidget {
  const FigmaFilePage({Key? key}) : super(key: key);

  @override
  State<FigmaFilePage> createState() => _FigmaFilePageState();
}

class _FigmaFilePageState extends State<FigmaFilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 200.h,
                decoration: BoxDecoration(
                  color: kBlackColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(90.r),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: kBlackColor,
                ),
                child: Container(
                  height: 490.h,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(130.r),
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 45.h,
                  left: 30.w,
                  right: 20.w,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: kWhiteColor,
                      ),
                    ),
                    SizedBox(width: 247.w),
                    Image.asset(
                      profile,
                      height: 34.h,
                      width: 34.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 42.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 30.w, left: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          figmaFiles,
                          style: TextStyle(
                            fontSize: 24.sp,
                            color: kWhiteColor,
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 38.w),
                        const Icon(Icons.more_horiz_rounded, size: 24, color: kWhiteColor),
                      ],
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Text(
                      figmaStep,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: kWhiteColor,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
    Padding(
      padding:  EdgeInsets.only(left: 30.w),
      child: AnimationLimiter(
      child: Column(
      children: AnimationConfiguration.toStaggeredList(
      duration: const Duration(seconds: 1),
      childAnimationBuilder: (widget) => SlideAnimation(
      horizontalOffset: MediaQuery.of(context).size.width / 2,
      child: FadeInAnimation(child: widget),
      ),
      children: [FigmaData(),],),),),
    ),
            ],
          ))
        ],
      ),
    );
  }
}
