import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_downloader_app/src/core/color_utils.dart';

class MyStyle {
  static TextStyle headline1 = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
    color: ColorUtils.black,
  );
  static TextStyle title1 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: ColorUtils.white,
  );
  static TextStyle title2 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: ColorUtils.white,
  );
  static TextStyle buttonText = TextStyle(
    color: Colors.black,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle generalText = TextStyle(
    color: Colors.black,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle extraText = TextStyle(
    color: Colors.grey[400],
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle homeTitle = TextStyle(
    color: ColorUtils.black,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle homeSubtitle = TextStyle(
    color: ColorUtils.grey,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );
}
