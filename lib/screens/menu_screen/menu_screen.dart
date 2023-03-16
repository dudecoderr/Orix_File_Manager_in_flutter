import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:orix_filemanager_flutterui/screens/home_page/home_screen.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../../constant/color_constant.dart';
import '../../constant/image_constant.dart';
import '../../constant/list/menu_Common.dart';
import '../../constant/string_constant.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 315.h,
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
                  height: 360.h,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(120.r),
                    ),
                  ),
                ),
              ),
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
                ),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.close,
                      color: kWhiteColor,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 47.h, right: 20.w),
                child: Row(
                  children: [
                    Image.asset(
                      profile,
                      height: 59.h,
                      width: 56.w,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(florenceKaty, style: TextStyle(color: kWhiteColor, fontFamily: "Mulish", fontSize: 17.sp, fontWeight: FontWeight.w700)),
                        Text(teamLeader, style: TextStyle(color: kYellowColor, fontFamily: "Mulish", fontSize: 12.sp, fontWeight: FontWeight.w600)),
                      ],
                    ),
                    SizedBox(width: 60.w),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kYellowColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      child: Text(
                        pro,
                        style: TextStyle(color: kBlackColor, fontWeight: FontWeight.w800, fontFamily: "Mulish", fontSize: 14.sp),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.w, right: 15.w),
                child: Container(
                  height: 93.h,
                  width: 310.w,
                  decoration: BoxDecoration(
                    color: kRedColor,
                    borderRadius: BorderRadius.circular(40.r),
                    boxShadow: [
                      BoxShadow(
                          color: kRedColor.withOpacity(0.60),
                          blurRadius: 7,
                          offset: const Offset(
                            0.0,
                            15,
                          ))
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              upgradeStorage,
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: kWhiteColor,
                                fontFamily: "Mulish",
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            ///===============step progress indicator=============================
                            SizedBox(
                              height: 14.h,
                            ),
                            SizedBox(
                              width: 183.w,
                              child: const StepProgressIndicator(
                                totalSteps: 45,
                                currentStep: 32,
                                size: 8,
                                padding: 0,
                                selectedColor: kWhiteColor,
                                unselectedColor: kYellowColor,
                                roundedEdges: Radius.circular(10),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 44.h,
                              width: 82.w,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: kBlackColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                ),
                                child: Text(
                                  upgrade,
                                  style: TextStyle(color: kYellowColor, fontWeight: FontWeight.w800, fontFamily: "Mulish", fontSize: 12.sp),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 75.h,
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
                SizedBox(
                  height: 300.h,
                  child: Padding(
                      padding: EdgeInsets.only(left: 30.w, right: 30.w),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            MenuConstant(
                              menus: Icons.person,
                              titles: profileAccount,
                              songtypes: edityour,
                            ),
                            Container(
                              height: 100.h,
                              margin: const EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: kLightGreyColor,
                              ),
                              padding: EdgeInsets.only(left: 20.w, right: 10.w),
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
                                      Icons.notifications,
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
                                          Row(
                                            children: [
                                              Text(
                                                pushnot,
                                                style: TextStyle(fontFamily: "Mulish", fontSize: 15.sp, fontWeight: FontWeight.w900),
                                              ),
                                              SizedBox(
                                                width: 23.w,
                                              ),
                                              FlutterSwitch(
                                                width: 45.0,
                                                activeColor: kBlackColor,
                                                height: 25.0,
                                                valueFontSize: 12.0,
                                                toggleSize: 16.0,
                                                activeToggleColor: kYellowColor,
                                                value: status,
                                                onToggle: (val) {
                                                  setState(() {
                                                    status = val;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 4.h,
                                          ),
                                          Text(
                                            setUpPush,
                                            style: TextStyle(fontSize: 12.sp, color: kGreyColor, fontFamily: "Mulish", fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            MenuConstant(
                              menus: Icons.watch_later,
                              titles: faqs,
                              songtypes: frequently,
                            ),
                            MenuConstant(
                              menus: Icons.lock,
                              titles: logOut,
                              songtypes: wantLogout,
                            )
                          ],
                        ),
                      )),
                ),
              ],
              ),
              ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
