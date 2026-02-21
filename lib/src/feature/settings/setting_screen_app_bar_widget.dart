import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_downloader_app/src/core/my_style.dart';

class SettingScreenAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const SettingScreenAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurple.shade400,
              Colors.blue.shade400,
              Colors.lightBlue.shade300,
            ],
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 15.h,
        children: [
          Text("Settings", style: MyStyle.title1),
          Text("Customize your download experience", style: MyStyle.title2),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}
