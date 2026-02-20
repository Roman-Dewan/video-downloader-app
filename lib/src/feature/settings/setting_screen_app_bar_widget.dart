import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_downloader_app/src/core/my_style.dart';

class SettingScreenAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const SettingScreenAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentGeometry.bottomLeft,
            end: AlignmentGeometry.bottomRight,
            colors: [
              Colors.blueAccent,
              Colors.blue,
              Colors.lightBlue,
              Colors.lightBlueAccent,
            ],
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 15.h,
        children: [
          Text("Download History", style: MyStyle.title1),
          Text("4 total downloads", style: MyStyle.title2),
        ],
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(100);
}
