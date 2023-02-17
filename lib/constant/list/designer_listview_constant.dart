import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../screens/sub_screen/dribble_shot.dart';
import '../../screens/sub_screen/figma_file.dart';
import '../color_constant.dart';
import '../image_constant.dart';
import '../string_constant.dart';

class Designer extends StatelessWidget {
  const Designer({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 420.h,
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
                children: [
                  DesignerList(
                    function: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context,) => const DribbleShotPage(),
                        ),
                      );
                    },
                    titles: dShot,
                    subtitle: files1,
                    desc: jan1,
                    image: dribble,
                  ),
                  const DesignerList(
                    titles: webFile,
                    subtitle: files2,
                    desc: feb1,
                    image: webFlow,
                  ),
                  const DesignerList(
                    titles: instagramPost,
                    subtitle: files3,
                    desc: jan2,
                    image: instagram,
                  ),
                   DesignerList(
                    function:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context,) => const FigmaFilePage(),
                        ),
                      );
                    },
                    titles: figmaFile,
                    subtitle: files4,
                    desc: feb2,
                    image: figma,
                  ),
                  const DesignerList(
                    titles: sketchFile,
                    subtitle: files5,
                    desc: feb3,
                    image: sketch,
                  ),
                ],
              );
          },
        ),
      ),
    );
  }
}

class DesignerList extends StatelessWidget {
  final String titles;
  final String subtitle;
  final String? desc;
  final String? image;
  final Function? function;
  const DesignerList({Key? key, this.function, required this.titles, required this.subtitle, this.desc, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){function!();},
      child: Padding(
        padding: EdgeInsets.only(left: 40.w, right: 30.w),
        child: Container(
          height: 100.h,
          width: 315.w,
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: kLightGreyColor,
          ),
          child: Row(
            children: [
              Image.asset(
               image.toString(),
                height: 60.h,
                width: 60.w,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: GestureDetector(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        titles,
                        style: TextStyle(fontFamily: "Mulish", fontSize: 15.sp, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                       desc!,
                        style: TextStyle(fontSize: 12.sp, color: kGreyColor, fontFamily: "Mulish", fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(fontSize: 12.sp, color: kBlackColor, fontFamily: "Mulish", fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

