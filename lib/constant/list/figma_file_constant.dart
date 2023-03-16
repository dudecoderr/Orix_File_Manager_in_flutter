import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../color_constant.dart';
import '../image_constant.dart';
import '../string_constant.dart';

class FigmaData extends StatefulWidget {
  FigmaData({super.key});

  @override
  State<FigmaData> createState() => _FigmaDataState();
}

class _FigmaDataState extends State<FigmaData> {
  List figmaFiles = [
    skate,
    clock,
    fileManager,
    appDaraz,
    b2b,
    landingPage,
    systemDesign,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          height: 420.h,
          child: figmaFiles.isNotEmpty
              ? ListView.builder(
                  itemCount: figmaFiles.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Slidable(
                          key: const ValueKey(1),
                          endActionPane: ActionPane(
                            // dismissible: DismissiblePane(onDismissed: () {
                            //   // we can able to perform to some action here
                            // }),
                            motion: const DrawerMotion(),
                            children: [
                              SlidableAction(
                                flex: 3,
                                autoClose: true,
                                onPressed: (value) {
                                  setState(() {
                                    figmaFiles.removeAt(index);
                                  });
                                },
                                backgroundColor: kWhiteColor,
                                foregroundColor: kRedColor,

                                icon: Icons.delete,
                                borderRadius: BorderRadius.circular(100),
                              ),



                              SlidableAction(
                                autoClose: true,
                                flex: 3,
                                onPressed: (value) {
                                  setState(() {
                                    // figmaFiles.add(index);
                                  });
                                },
                                backgroundColor: kWhiteColor,
                                foregroundColor: kBlackColor,
                                borderRadius: BorderRadius.circular(50),
                                icon: Icons.link,
                              ),
                              SlidableAction(
                                autoClose: true,
                                flex: 3,
                                onPressed: (value) {
                                  setState(() {
                                    // figmaFiles.add(index);
                                  });
                                },
                                backgroundColor: kWhiteColor,
                                foregroundColor: kYellowColor,
                                borderRadius: BorderRadius.circular(50),
                                icon: Icons.edit,
                              ),
                            ],
                          ),

                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: kLightGreyColor),
                            width: 315.w,
                            height: 78.h,
                            child: Row(
                              children: [
                                Image.asset(
                                  figma1,
                                  height: 42.h,
                                  width: 42.w,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 15.h,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          style: TextStyle(color: kBlackColor),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: figmaFiles[index],
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: kBlackColor,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: "Mulish",
                                                )),
                                            TextSpan(
                                              text: fig,
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w600,
                                                color: kGreyColor,
                                                fontFamily: "Mulish",
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        homeMyStorage,
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          color: kGreyColor,
                                          fontFamily: "Mulish",
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                    );
                  },
                )
              : const Center(
                  child: Text("Your List is Empty", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18)),
                ),
        ));
  }
}