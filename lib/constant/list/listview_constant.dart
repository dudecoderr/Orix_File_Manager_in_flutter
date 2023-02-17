import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orix_filemanager_flutterui/constant/string_constant.dart';

final List<MenuList> menuFiles = [
  MenuList(titles: profileAccount, songtypes: edityour, time: "8:17", icon: Icons.person),
  MenuList(titles: pushnot, songtypes: setUpPush, time: "5:10",icon: Icons.notifications,),
  MenuList(titles: faqs, songtypes: frequently, time: "4:35",icon: Icons.watch_later),
  MenuList(titles: wantLogout, songtypes: logOut, time: "2:30",icon: Icons.lock,),
];



class MenuList {
  final String titles;
  final String songtypes;
  final String? time;
  final IconData icon;

  MenuList( {
    required this.titles,
    required this.songtypes,
    required this.time,
    required this.icon,
  });
}
