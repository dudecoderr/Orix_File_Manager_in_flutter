import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
import '../../constant/list/storage_listview_constant.dart';
import '../../constant/string_constant.dart';
import 'orix_designer.dart';

class StoragePage extends StatefulWidget {
  const StoragePage({Key? key}) : super(key: key);

  @override
  State<StoragePage> createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Container(
              height: 290.h,
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
                height: 400.h,
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      yourStorage,
                      style: TextStyle(
                        fontSize: 21.sp,
                        color: kWhiteColor,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 38.w),
                    Image.asset(
                      filter,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.only(right: 30.w, left: 20.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          group1,
                          height: 94.h,
                          width: 94.w,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              totalUsed,
                              style: TextStyle(color: kWhiteColor, fontSize: 17.sp, fontFamily: "Mulish"),
                            ),
                            SizedBox(
                              height: 8.5.h,
                            ),
                            Text(
                              storeGB,
                              style: TextStyle(color: kWhiteColor, fontSize: 17.sp, fontFamily: "Mulish"),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              num1,
                              style: TextStyle(color: kYellowColor, fontSize: 23.sp, fontWeight: FontWeight.w700, fontFamily: "Mulish"),
                            ),
                            Text(
                              items,
                              style: TextStyle(color: kWhiteColor, fontSize: 13.sp, fontFamily: "Mulish"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 53.h,
              ),
              AnimationLimiter(
                child: Column(
                  children: AnimationConfiguration.toStaggeredList(
                    duration: const Duration(seconds: 1),
                    childAnimationBuilder: (widget) => SlideAnimation(
                      horizontalOffset: MediaQuery.of(context).size.width / 2,
                      child: FadeInAnimation(child: widget),
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 30.w, left: 30.w),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DesignerPage(),
                              ),
                            );
                          },
                          child: Container(
                              width: 315.w,
                              height: 159.h,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r), color: kLightGreyColor),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 30.w,top: 30.h, bottom: 20.h),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.folder, color: kYellowColor, size: 57.h, shadows: [
                                              BoxShadow(color: kYellowColor.withOpacity(0.40), spreadRadius: 0.6, offset: const Offset(0.0, 5))
                                            ]),
                                            SizedBox(
                                              width: 80.w,
                                            ),
                                            Image.asset(
                                              profiles,
                                              height: 43.h,
                                              width: 105.w,
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  designers,
                                                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22.16.sp, fontFamily: "Mulish"),
                                                ),
                                                Text(
                                                  created,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 15.83.sp,
                                                    fontFamily: "Mulish",
                                                    color: kGreyColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 50.w,
                                            ),
                                            Container(
                                                height: 50.h,
                                                width: 40.w,
                                                decoration: const BoxDecoration(shape: BoxShape.circle, color: kRedColor, boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black,
                                                    blurRadius: 5.0,
                                                  ),
                                                ]),
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.amber,
                                                  size: 18.h,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 190.h,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: storageFiles.length,
                    itemBuilder: (context, index) {
                      final imgList = storageFiles[index];
                      return AnimationLimiter(
                        child: Column(
                          children: AnimationConfiguration.toStaggeredList(
                            duration: const Duration(seconds: 1),
                            childAnimationBuilder: (widget) => SlideAnimation(
                              horizontalOffset: MediaQuery.of(context).size.width / 2,
                              child: FadeInAnimation(child: widget),
                            ),
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 30.w, right: 30.w),
                                child: Container(
                                  height: 100.h,
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    color: kLightGreyColor,
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        imgList.image.toString(),
                                        height: 60.h,
                                        width: 60.w,
                                      ),
                                      //=============== navigat screen =================
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20, left: 20),
                                        child: GestureDetector(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                imgList.titles,
                                                style: TextStyle(fontFamily: "Mulish", fontSize: 15.sp, fontWeight: FontWeight.w900),
                                              ),
                                              SizedBox(
                                                height: 4.h,
                                              ),
                                              Text(
                                                imgList.subtitle,
                                                style:
                                                    TextStyle(fontSize: 12.sp, color: kGreyColor, fontFamily: "Mulish", fontWeight: FontWeight.bold),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    imgList.desc.toString(),
                                                    style: TextStyle(
                                                        fontSize: 12.sp, color: kGreyColor, fontFamily: "Mulish", fontWeight: FontWeight.bold),
                                                  ),
                                                  Text(
                                                    imgList.desc1.toString(),
                                                    style: TextStyle(
                                                        fontSize: 12.sp, color: kGreyColor, fontFamily: "Mulish", fontWeight: FontWeight.bold),
                                                  ),
                                                  Text(
                                                    imgList.desc2.toString(),
                                                    style: TextStyle(
                                                        fontSize: 12.sp, color: kGreyColor, fontFamily: "Mulish", fontWeight: FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
