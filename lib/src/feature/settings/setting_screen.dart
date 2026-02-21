import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_downloader_app/src/core/color_utils.dart';
import 'package:video_downloader_app/src/core/my_style.dart';
import 'package:video_downloader_app/src/feature/settings/setting_screen_app_bar_widget.dart';
import 'package:video_downloader_app/src/feature/settings/setting_tile_widget.dart';
import 'package:video_downloader_app/src/feature/settings/setting_section_header_widget.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _notificationsEnabled = true;
  bool _autoDownloadEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.lightGrey,
      appBar: SettingScreenAppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── General Section ──
            const SettingSectionHeaderWidget(title: "General"),
            _buildCard(
              children: [
                SettingTileWidget(
                  icon: Icons.folder_rounded,
                  iconBackgroundColor: ColorUtils.blue,
                  title: "Download Location",
                  subtitle: "/Downloads/Videos",
                  trailing: Icon(
                    Icons.chevron_right_rounded,
                    color: ColorUtils.grey,
                    size: 24.sp,
                  ),
                  onTap: () {},
                ),
                _divider(),
                SettingTileWidget(
                  icon: Icons.notifications_rounded,
                  iconBackgroundColor: ColorUtils.green,
                  title: "Notifications",
                  subtitle: "Download completed alerts",
                  trailing: CupertinoSwitch(
                    value: _notificationsEnabled,
                    // activeThumbColor: ColorUtils.green,
                    onChanged: (val) =>
                        setState(() => _notificationsEnabled = val),
                  ),
                ),
                _divider(),
                SettingTileWidget(
                  icon: Icons.download_rounded,
                  iconBackgroundColor: ColorUtils.orange,
                  title: "Auto Download",
                  subtitle: "Start immediately",
                  trailing: CupertinoSwitch(
                    value: _autoDownloadEnabled,
                    // activeThumbColor: ColorUtils.green,
                    onChanged: (val) =>
                        setState(() => _autoDownloadEnabled = val),
                  ),
                ),
              ],
            ),

            // ── Storage Section ──
            const SettingSectionHeaderWidget(title: "Storage"),
            _buildCard(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                  child: Column(
                    children: [
                      // Used Space row
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.w,
                            decoration: BoxDecoration(
                              color: ColorUtils.blue.withValues(alpha: 0.12),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Icon(
                              Icons.sd_storage_rounded,
                              color: ColorUtils.blue,
                              size: 20.sp,
                            ),
                          ),
                          SizedBox(width: 14.w),
                          Text("Used Space", style: MyStyle.generalText),
                          const Spacer(),
                          Text(
                            "2.4 GB",
                            style: MyStyle.generalText
                                .copyWith(color: ColorUtils.blue),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      // Progress bar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4.r),
                        child: LinearProgressIndicator(
                          value: 2.4 / 5.0,
                          backgroundColor: Colors.grey.shade200,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Colors.blue,
                          ),
                          minHeight: 6.h,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      // Usage text
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "2.4 GB of 5.0 GB used",
                          style: MyStyle.settingSubtitle,
                        ),
                      ),
                      SizedBox(height: 14.h),
                      // Clear button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete_outline_rounded,
                            color: ColorUtils.red,
                            size: 18.sp,
                          ),
                          label: Text(
                            "Clear All Downloads",
                            style: MyStyle.buttonText
                                .copyWith(color: ColorUtils.red),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: ColorUtils.red.withValues(alpha: 0.3),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // ── About Section ──
            const SettingSectionHeaderWidget(title: "About"),
            _buildCard(
              children: [
                SettingTileWidget(
                  icon: Icons.info_outline_rounded,
                  iconBackgroundColor: ColorUtils.grey,
                  title: "About App",
                  trailing: Icon(
                    Icons.chevron_right_rounded,
                    color: ColorUtils.grey,
                    size: 24.sp,
                  ),
                  onTap: () {},
                ),
                _divider(),
                SettingTileWidget(
                  icon: Icons.description_outlined,
                  iconBackgroundColor: ColorUtils.deepPurple,
                  title: "Terms of Service",
                  trailing: Icon(
                    Icons.chevron_right_rounded,
                    color: ColorUtils.grey,
                    size: 24.sp,
                  ),
                  onTap: () {},
                ),
                _divider(),
                SettingTileWidget(
                  icon: Icons.shield_outlined,
                  iconBackgroundColor: ColorUtils.blue,
                  title: "Privacy Policy",
                  trailing: Icon(
                    Icons.chevron_right_rounded,
                    color: ColorUtils.grey,
                    size: 24.sp,
                  ),
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }

  /// Reusable rounded white card wrapper for settings sections.
  Widget _buildCard({required List<Widget> children}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: ColorUtils.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: ColorUtils.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(children: children),
    );
  }

  /// Thin horizontal divider inside a card.
  Widget _divider() {
    return Divider(
      height: 1,
      thickness: 0.5,
      indent: 70.w,
      color: Colors.grey.shade200,
    );
  }
}
