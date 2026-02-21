import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_downloader_app/src/core/color_utils.dart';
import 'package:video_downloader_app/src/core/my_style.dart';
import 'package:video_downloader_app/src/feature/downLoad/download_screen_app_bar_widget.dart';
import 'package:video_downloader_app/src/feature/downLoad/all_screen_widget.dart';
import 'package:video_downloader_app/src/feature/downLoad/audio_screen_widget.dart';
import 'package:video_downloader_app/src/feature/downLoad/video_screen_widget.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  int? _sliding = 0;

  // Tab thumb colors per selection
  static const List<Color> _thumbColors = [
    ColorUtils.blue,
    ColorUtils.red,
    ColorUtils.deepPurple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.lightGrey,
      appBar: DownloadScreenAppBarWidget(),
      body: Column(
        children: [
          Container(
            color: ColorUtils.white,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: CupertinoSlidingSegmentedControl<int>(
              children: {
                0: _buildTab("All", 0),
                1: _buildTab("Videos", 1),
                2: _buildTab("Audio", 2),
              },
              backgroundColor: ColorUtils.grey.withValues(alpha: 0.1),
              groupValue: _sliding,
              padding: EdgeInsets.all(4),
              thumbColor: _thumbColors[_sliding ?? 0],
              onValueChanged: (int? newValue) {
                setState(() {
                  _sliding = newValue;
                });
              },
            ),
          ),
          Expanded(child: getSelectedView()),
        ],
      ),
    );
  }

  Widget _buildTab(String label, int index) {
    final isSelected = _sliding == index;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      child: Text(
        label,
        style: MyStyle.buttonText.copyWith(
          fontWeight: FontWeight.w600,
          color: isSelected ? ColorUtils.white : ColorUtils.black,
        ),
      ),
    );
  }

  Widget getSelectedView() {
    switch (_sliding) {
      case 0:
        return AllScreenWidget();
      case 1:
        return VideoScreenWidget();
      case 2:
        return AudioScreenWidget();
      default:
        return AllScreenWidget();
    }
  }
}
