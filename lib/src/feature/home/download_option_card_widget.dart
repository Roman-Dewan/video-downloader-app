import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_downloader_app/src/core/color_utils.dart';
import 'package:video_downloader_app/src/core/my_style.dart';

class DownloadOptionCardWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final VoidCallback onTap;
  const DownloadOptionCardWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorUtils.white,
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(10.sp),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                ColorUtils.red,
                ColorUtils.red,
                ColorUtils.pink,
                ColorUtils.pink,
              ],
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Icon(
            // Icons.videocam_outlined,
            icon,
            color: ColorUtils.white,
            size: 25.h,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_sharp,
          size: 15.h,
          color: ColorUtils.grey,
        ),
        // title: Text("Download Video", style: MyStyle.homeTitle),
        // subtitle: Text("Choose quality & format", style: MyStyle.homeSubtitle),
        title: Text(title, style: MyStyle.homeTitle),
        subtitle: Text(subTitle, style: MyStyle.homeSubtitle),
      ),
    );
  }
}
