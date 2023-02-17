import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orix_filemanager_flutterui/constant/image_constant.dart';
import 'package:orix_filemanager_flutterui/constant/string_constant.dart';

import '../constant/color_constant.dart';
import '../constant/list/constant _text.dart';
import '../constant/list/profile_constant.dart';
import 'home_page/home_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 380.h,
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
                  height: 310.h,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(110.r),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: kWhiteColor,
                      ),
                    ),
                    SizedBox(width: 247.w),
                    Image.asset(
                      filter,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 26.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w, right: 30.w),
                child: Text(
                  myProfile,
                  style: TextStyle(
                    fontSize: 27.sp,
                    color: kWhiteColor,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 26.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 147.w, right: 148.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      profile,
                      height: 80.h,
                      width: 80.w,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 100.h, left: 126.w),
                child: Column(
                  children: [
                    Text(
                      florenceKaty,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: kWhiteColor,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      teamLeader,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: kYellowColor,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35.h,
              ),

              ///=======================text_Constant===================
              const TextConstant(),
              SizedBox(
                height: 77.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: SizedBox(
                  height: 250.h,
                  child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.w, right: 30.w),
                    child: Text(
                      myFolders,
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: kBlackColor,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  ///=-=====================profile constant======================
                  SizedBox(
                    height: 20.h,
                  ),
                  const ProfileConstant(),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w, right: 30.w),
                    child: Text(
                      lastFiles,
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: kBlackColor,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30.w, left: 30.w,bottom: 20.h),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
                      color: kLightGreyColor,
                      child: ListTile(
                          hoverColor: kYellowColor,
                          title: Text(perfumeApp,
                              style: TextStyle(color: kBlackColor, fontSize: 16.sp, fontFamily: "Mulish", fontWeight: FontWeight.w700)),
                          subtitle: Text(homeMyStorage,
                              style: TextStyle(color: kGreyColor, fontSize: 11.sp, fontFamily: "Mulish", fontWeight: FontWeight.w600)),
                          leading: Image.asset(
                            figma1,
                            height: 42.h,
                            width: 42.w,
                          )),
                    ),
                  ),
                ],
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
