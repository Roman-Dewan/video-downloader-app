import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_downloader_app/src/feature/home/audio_quality_bottom_sheet.dart';
import 'package:video_downloader_app/src/feature/home/download_option_card_widget.dart';
import 'package:video_downloader_app/src/feature/home/home_screen_app_bar.dart';
import 'package:video_downloader_app/src/feature/home/video_quality_bottom_sheet.dart';
import 'package:video_downloader_app/src/feature/home/video_url_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _urlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeScreenAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Column(
            spacing: 10.h,
            children: [
              // Url paste
              VideoUrlWidget(
                onPressed: _onTapUrlPaste,
                controller: _urlController,
              ),

              // download video.
              DownloadOptionCardWidget(
                title: 'Download Video',
                subTitle: 'Choose quality & format',
                icon: Icons.videocam_outlined,
                onTap: _onTapVideoOption,
              ),

              // download Audio
              DownloadOptionCardWidget(
                title: 'Download Audio',
                subTitle: 'Extract Audio Only',
                icon: Icons.arrow_forward_ios_sharp,
                onTap: _onTapAudioOption,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapUrlPaste() {}

  void _onTapVideoOption() {
    VideoQualityBottomSheet.show(context);
  }

  void _onTapAudioOption() {
    AudioQualityBottomSheet.show(context);
  }
}
