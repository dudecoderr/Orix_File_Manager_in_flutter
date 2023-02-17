import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orix_filemanager_flutterui/constant/string_constant.dart';
import '../color_constant.dart';
import '../image_constant.dart';

class ProfileConstant extends StatelessWidget {
  const ProfileConstant({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            title: clientBriefs,
            image_location: profile2,
            image_caption: created1,
          ),
          Category(
            title: cNNB2B,
            image_location: profile3,
            image_caption: created2,
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  final IconData? icons;
  final String title;
  Category({super.key, required this.image_location, required this.image_caption, this.icons, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10,left: 20),
      child: InkWell(
        onTap: () {},
        child:Container(
            width: 290.w,
            height: 110.h,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r), color: kLightGreyColor),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.w, right: 20.w, top: 30.h, bottom: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.folder, color: kYellowColor, size: 57.h, shadows: [
                            BoxShadow(color: kYellowColor.withOpacity(0.40), spreadRadius: 0.6, offset: const Offset(0.0, 5))
                          ]),
                          SizedBox(width:72.w,),
                          Image.asset(image_location,height: 43.h,width: 105.w,)
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.w, right: 89.w,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14.sp, fontFamily: "Mulish"),
                            ),SizedBox(height: 5.h),
                            Text(
                              image_caption,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 10.sp,
                                fontFamily: "Mulish",
                                color: kGreyColor,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),

                ),
              ],
            )),
      ),
    );
  }
}