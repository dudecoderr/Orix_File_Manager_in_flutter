import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orix_filemanager_flutterui/screens/menu_screen/menu_screen.dart';
import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
import '../../constant/string_constant.dart';
import '../profile_screen.dart';
import '../sub_screen/storage_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current_index = 0;
  void onTapped(int index) {
    setState(() {
      current_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 530.h,
                decoration: BoxDecoration(
                  color: kBlackColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(90.r),
                  ),
                ),
              ),
              Container(
                decoration:  BoxDecoration(
                  color: kBlackColor,
                ),
                child: Container(
                  height: 150.h,
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MenuPage(),
                            ),
                          );
                        },
                        child: Image.asset(
                          menuIcon,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                      SizedBox(width: 247.w),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfilePage(),
                            ),
                          );
                        },
                        child: Image.asset(
                          profile,
                          height: 34.h,
                          width: 34.w,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 30.w,
                  ),
                  child: Text(
                    file,
                    style: TextStyle(color: kWhiteColor, fontFamily: "Mulish", fontSize: 40.sp, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 30.w,
                  ),
                  child: Text(
                    manager,
                    style: TextStyle(color: kWhiteColor, fontFamily: "Mulish", fontSize: 35.sp, fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 30.w,
                  ),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(color: kBlackColor),
                      children: <TextSpan>[
                        TextSpan(
                            text: letsClean,
                            style: TextStyle(
                              color: kWhiteColor,
                              fontFamily: "Mulish",
                            )),
                        TextSpan(
                          text: manageYour,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: kYellowColor,
                            fontFamily: "Mulish",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 30.w,
                  ),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      internal,
                      style: TextStyle(fontSize: 16.sp, color: kYellowColor, fontFamily: "Mulish", fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Image.asset(union, width: 46.w, height: 6.h),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 30.w,
                  ),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      external,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: kWhiteColor,
                        fontFamily: "Mulish",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(height: 45,),
          Positioned(
            top: 290.h,
            left: 86.w,
            right: 41.w,
            bottom: 90.h,
            child: Container(
              height: 422.h,
              width: 248.w,
              decoration: BoxDecoration(
                color: kRedColor,
                borderRadius: BorderRadius.circular(40.r),
                boxShadow: [
                  BoxShadow(
                      color: kRedColor.withOpacity(0.60),
                      blurRadius: 7,
                      offset: const Offset(
                        15,
                        0.0,
                      ))
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 20.h, left: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                    SizedBox(
                      height: 8.h,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const StoragePage(),
                          ),
                        );
                      },
                      child: Image.asset(
                        group,
                        height: 140.h,
                        width: 190.w,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.w, right: 45.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            used,
                            style: TextStyle(color: kWhiteColor, fontSize: 15.sp, fontFamily: "Mulish", fontWeight: FontWeight.w700),
                          ),
                          Text(
                            free,
                            style: TextStyle(color: kYellowColor, fontSize: 15.sp, fontFamily: "Mulish", fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 39.w),
                      child: SizedBox(
                        height: 51.h,
                        width: 114.w,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.white54,
                                blurRadius: 5,
                                spreadRadius: 10,
                                offset: Offset(0, 0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: SizedBox(
                            height: 39.h,
                            width: 102.w,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const StoragePage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: kBlackColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                              ),
                              child: Text(
                                storage,
                                style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Mulish", fontSize: 12.sp),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(right: 25.w, left: 25.w, top: 10.8.h),
                child: SizedBox(
                  height: 80.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(75.sp), topRight: Radius.circular(75.sp)),
                    child: CustomNavigationBar(
                      backgroundColor: kWhiteColor,
                      selectedColor: kBlackColor,
                      currentIndex: current_index,
                      onTap: onTapped,
                      iconSize: 25.sp,
                      items: [
                        CustomNavigationBarItem(
                          icon: const Icon(Icons.explore),
                        ),
                        CustomNavigationBarItem(
                          icon: const Icon(Icons.description),
                        ),
                        CustomNavigationBarItem(
                          icon: const Icon(Icons.settings),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
