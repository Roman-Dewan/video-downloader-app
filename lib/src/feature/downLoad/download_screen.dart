import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DownloadScreenAppBarWidget(),

      body: Column(
        children: [
          Container(
            color: ColorUtils.white,
            width: double.maxFinite,
            child: CupertinoSlidingSegmentedControl(
              children: {
                0: Text("All", style: MyStyle.buttonText),
                1: Text("Videos", style: MyStyle.buttonText),
                2: Text("Audio", style: MyStyle.buttonText),
              },
              backgroundColor: ColorUtils.white,
              groupValue: _sliding,
              padding: EdgeInsets.all(4),
              thumbColor: ColorUtils.blue,
              isMomentary: false,
              proportionalWidth: false,
              onValueChanged: (int? newValue) {
                setState(() {
                  _sliding = newValue;
                  debugPrint("The index value is $_sliding");
                });
              },
            ),
          ),
          Expanded(child: getSelectedView()),
        ],
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
