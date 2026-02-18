import 'package:flutter/material.dart';
import 'package:video_downloader_app/src/core/color_utils.dart';
import 'package:video_downloader_app/src/feature/downLoad/download_screen.dart';
import 'package:video_downloader_app/src/feature/home/home_screen.dart';
import 'package:video_downloader_app/src/feature/settings/setting_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentPageIndex = 0;

  List<Widget> pages = [HomeScreen(), DownloadScreen(), SettingScreen()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[_currentPageIndex],
        bottomNavigationBar: NavigationBar(
          backgroundColor: ColorUtils.white,
          indicatorColor: Colors.red,

          selectedIndex: _currentPageIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _currentPageIndex = index;
            });
          },
          destinations: [
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.download),
              label: "Downloads",
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
