import 'package:flutter/material.dart';
import 'package:video_downloader_app/src/feature/settings/setting_screen_app_bar_widget.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SettingScreenAppBarWidget(),
      body: Center(child: Text("Setting Screen")),
    );
  }
}
