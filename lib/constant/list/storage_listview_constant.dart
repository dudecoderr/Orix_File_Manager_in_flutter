import 'package:orix_filemanager_flutterui/constant/string_constant.dart';
import '../image_constant.dart';

final List<StorageList> storageFiles = [
  StorageList(titles: oneDrive, subtitle: aprilDt, desc: file1, desc1: item1, desc2: used1, image: cloud),
  StorageList(titles: googledrive, subtitle: aprilDt1, desc: file2, desc1: item2, desc2: used2, image: drive),
  StorageList(titles: dropbox, subtitle: aprilDt2, desc: file3, desc1: item2, desc2: used3, image: dropBox),
];

class StorageList {
  final String titles;
  final String subtitle;
  final String? desc;
  final String? desc1;
  final String? desc2;
  final String? image;

  StorageList({
    required this.titles,
    required this.subtitle,
    required this.desc,
    required this.desc1,
    required this.desc2,
    this.image,
  });
}
