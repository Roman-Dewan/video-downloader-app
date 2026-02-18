import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_downloader_app/src/core/color_utils.dart';
import 'package:video_downloader_app/src/core/my_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                ColorUtils.red,
                ColorUtils.red,
                ColorUtils.pink,
                ColorUtils.pink,
              ],
            ),
          ),
        ),
        toolbarHeight: 100,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(
                  Icons.file_download_outlined,
                  color: ColorUtils.white,
                  size: 32.sp,
                ),
                SizedBox(width: 10.w),
                Text("Video Downloader", style: MyStyle.title1),
              ],
            ),
            Text(
              "Download videos and audios from YouTube",
              style: MyStyle.title2,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(Duration(seconds: 2));
          },
          backgroundColor: Colors.red,
          child: Column(children: [Text("data")]),
        ),
      ),
    );
  }
}
