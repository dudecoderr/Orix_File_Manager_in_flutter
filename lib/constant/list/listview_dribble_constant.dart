import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../color_constant.dart';
import '../image_constant.dart';
import '../string_constant.dart';

class Shots extends StatelessWidget {
  const Shots({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 420.h,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: const [
                DribbleList(
                  image: groupIcon,
                  title: dt1, image5: grp1,
                  image1: per1,
                  image2: per2,
                  image3: per3,
                  image4: per4,
                ),
                DribbleList(
                  image: groupIcon,
                  title: dt2,
                  image5: grp2,
                  image1: graph1,
                  image2: graph2,
                  image3: graph3,
                ),
                DribbleList(
                  image: groupIcon,
                  title: dt3,
                  image1: shoes,
                  image3: shoes,
                  image5: grp3,
                  image2: shoes1,
                ),
                DribbleList(
                  image: groupIcon,
                  image5: grp4,
                  title: dt4,
                  image1: food1,
                  image2: food2,
                  image3: food3,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class DribbleList extends StatelessWidget {
  final String? image;
  final String? image1;
  final String? image2;
  final String? image3;
  final String? image4;
  final String? image5;
  final String? title;
  const DribbleList({
    Key? key,
    this.image,
    this.image1,
    this.image2,
    this.image3,
    this.image4,
    this.image5,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 17.w),
            child: Row(
              children: [
                Image.asset(
                  image.toString(),
                  height: 18.h,
                  width: 18.w,
                ),
                SizedBox(
                  width: 21.w,
                ),
                Text(
                  title!,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: kBlackColor,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Image.asset(
                image5.toString(),
                height: 90.h,
                width: 50.w,
              ),
              Spacer(),
              Image.asset(image1.toString(), height: 74.h, width: 74.w),
              Spacer(),
              Image.asset(image2.toString(), height: 74.h, width: 74.w),
              Spacer(),
              Image.asset(image3.toString(), height: 74.h, width: 74.w),
              Spacer(),

            ],
          )
        ],
      ),
    );
  }
}
