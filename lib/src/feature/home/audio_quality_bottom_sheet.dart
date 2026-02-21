import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_downloader_app/src/core/color_utils.dart';
import 'package:video_downloader_app/src/core/my_style.dart';
import 'package:video_downloader_app/src/data/dummy_data/audio_quality_data.dart';

class AudioQualityBottomSheet extends StatefulWidget {
  const AudioQualityBottomSheet({super.key});

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: ColorUtils.transparent,
      builder: (_) => const AudioQualityBottomSheet(),
    );
  }

  @override
  State<AudioQualityBottomSheet> createState() =>
      _AudioQualityBottomSheetState();
}

class _AudioQualityBottomSheetState extends State<AudioQualityBottomSheet> {
  int _selectedIndex = -1;
  final _options = AudioQualityData.options;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorUtils.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
      padding: EdgeInsets.only(
        top: 16.h,
        bottom: MediaQuery.of(context).padding.bottom + 16.h,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8.sp),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [ColorUtils.purple, ColorUtils.deepPurple],
                    ),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(
                    Icons.headphones_outlined,
                    color: ColorUtils.white,
                    size: 22.sp,
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Select Audio Quality',
                        style: MyStyle.bottomSheetTitle,
                      ),
                      Text(
                        'Choose format and quality',
                        style: MyStyle.bottomSheetSubtitle,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  borderRadius: BorderRadius.circular(20.r),
                  child: Icon(Icons.close, size: 24.sp, color: ColorUtils.grey),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),

          // Quality options
          ...List.generate(_options.length, (index) {
            final q = _options[index];
            final isSelected = _selectedIndex == index;
            return GestureDetector(
              onTap: () => setState(() => _selectedIndex = index),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
                decoration: BoxDecoration(
                  color: isSelected
                      ? ColorUtils.purple.withValues(alpha: 0.06)
                      : ColorUtils.white,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: isSelected
                        ? ColorUtils.purple
                        : ColorUtils.grey.withValues(alpha: 0.25),
                    width: isSelected ? 1.5 : 1,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(q.name, style: MyStyle.qualityOptionName),
                              SizedBox(width: 8.w),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6.w,
                                  vertical: 2.h,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorUtils.purple.withValues(
                                    alpha: 0.12,
                                  ),
                                  borderRadius: BorderRadius.circular(4.r),
                                ),
                                child: Text(
                                  q.format,
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600,
                                    color: ColorUtils.purple,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            '${q.detail}  •  ${q.size}',
                            style: MyStyle.qualityOptionDetail,
                          ),
                        ],
                      ),
                    ),
                    if (isSelected)
                      Container(
                        width: 24.w,
                        height: 24.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorUtils.purple,
                        ),
                        child: Icon(
                          Icons.check,
                          size: 16.sp,
                          color: ColorUtils.white,
                        ),
                      ),
                  ],
                ),
              ),
            );
          }),

          SizedBox(height: 16.h),

          // Download button
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SizedBox(
              width: double.infinity,
              height: 50.h,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: _selectedIndex == -1
                        ? [ColorUtils.grey, ColorUtils.grey]
                        : [ColorUtils.purple, ColorUtils.deepPurple],
                  ),
                  borderRadius: BorderRadius.circular(14.r),
                ),
                child: ElevatedButton.icon(
                  onPressed: _selectedIndex == -1
                      ? null
                      : () {
                          final selected = _options[_selectedIndex];
                          debugPrint('Audio download: ${selected.name}');
                          Navigator.pop(context);
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorUtils.transparent,
                    shadowColor: ColorUtils.transparent,
                    disabledBackgroundColor: ColorUtils.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.r),
                    ),
                  ),
                  icon: const Icon(Icons.download, color: ColorUtils.white),
                  label: Text('Download', style: MyStyle.downloadButtonText),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
