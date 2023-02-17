import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orix_filemanager_flutterui/constant/string_constant.dart';
import '../color_constant.dart';


class TextConstant extends StatelessWidget {
  const TextConstant({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Folder(
          title: folder,
          subtitle: num2,
        ),
        Folder(
          title: items,
          subtitle: num3,
        ),
        Folder(
          title: uses,
          subtitle: num4,
        ),
      ],
    );
  }
}

class Folder extends StatelessWidget {
  final String subtitle;
  final String title;
  Folder({super.key, required this.subtitle, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(left: 50.w),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18.sp,
                  color: kWhiteColor,
                  fontFamily: "Mulish",
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 24.sp,
                  color: kYellowColor,
                  fontFamily: "Mulish",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
