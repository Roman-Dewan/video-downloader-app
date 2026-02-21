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
    color: ColorUtils.black,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle generalText = TextStyle(
    color: ColorUtils.black,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle extraText = TextStyle(
    color: ColorUtils.grey,
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
  static TextStyle sectionTitle = TextStyle(
    color: ColorUtils.grey,
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle settingSubtitle = TextStyle(
    color: ColorUtils.grey,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle downloadCardTitle = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: ColorUtils.black,
    height: 1.3,
  );
  static TextStyle downloadCardSubtitle = TextStyle(
    fontSize: 12.sp,
    color: ColorUtils.grey,
    fontWeight: FontWeight.w400,
  );
  static TextStyle downloadProgressText = TextStyle(
    fontSize: 12.sp,
    color: ColorUtils.blue,
    fontWeight: FontWeight.w500,
  );
}
