import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_downloader_app/src/core/my_style.dart';

/// Reusable section header for settings groups (e.g. "General", "Storage", "About").
class SettingSectionHeaderWidget extends StatelessWidget {
  final String title;

  const SettingSectionHeaderWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, top: 20.h, bottom: 8.h),
      child: Text(title, style: MyStyle.sectionTitle),
    );
  }
}
