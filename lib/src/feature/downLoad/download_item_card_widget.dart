import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_downloader_app/src/core/color_utils.dart';
import 'package:video_downloader_app/src/core/my_style.dart';
import 'package:video_downloader_app/src/data/model/download_item_model.dart';

class DownloadItemCardWidget extends StatelessWidget {
  final DownloadItemModel item;
  final VoidCallback? onPause;
  final VoidCallback? onPlay;
  final VoidCallback? onDelete;

  const DownloadItemCardWidget({
    super.key,
    required this.item,
    this.onPause,
    this.onPlay,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: ColorUtils.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: ColorUtils.black.withValues(alpha: 0.06),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Thumbnail
          Container(
            width: 72.w,
            height: 72.w,
            decoration: BoxDecoration(
              color: item.thumbnailColor,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(
              item.thumbnailIcon,
              color: ColorUtils.white.withValues(alpha: 0.85),
              size: 32.sp,
            ),
          ),
          SizedBox(width: 12.w),
          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  item.title,
                  style: MyStyle.downloadCardTitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.h),
                // Quality & Size
                Text(
                  '${item.quality}  •  ${item.fileSize}',
                  style: MyStyle.downloadCardSubtitle,
                ),
                SizedBox(height: 6.h),
                // Progress or Time
                if (item.isDownloading) ...[
                  Row(
                    children: [
                      Text('Downloading...', style: MyStyle.downloadProgressText),
                      const Spacer(),
                      Text(
                        '${(item.downloadProgress * 100).toInt()}%',
                        style: MyStyle.extraText,
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4.r),
                    child: LinearProgressIndicator(
                      value: item.downloadProgress,
                      backgroundColor: ColorUtils.grey.withValues(alpha: 0.2),
                      valueColor: const AlwaysStoppedAnimation<Color>(ColorUtils.blue),
                      minHeight: 4.h,
                    ),
                  ),
                ] else
                  Text(item.timeAgo, style: MyStyle.downloadProgressText),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          // Action buttons
          Column(
            children: [
              if (item.isDownloading) 
                _buildActionButton(
                  icon: Icons.pause_rounded,
                  onTap: () => onPause?.call(),
                  color: ColorUtils.grey
                ),
              if (item.isDownloading) SizedBox(height: 8.h),
              if (!item.isDownloading)
                _buildActionButton(
                  icon: Icons.play_arrow_rounded,
                  onTap: () => onPlay?.call(),
                  color: ColorUtils.green
                ),
              if (!item.isDownloading) SizedBox(height: 8.h),
              _buildActionButton(
                icon: Icons.delete_outline_rounded,
                onTap: () => onDelete?.call(),
                color: ColorUtils.red
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required VoidCallback onTap,
    Color? color,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20.r),
      child: Container(
        padding: EdgeInsets.all(6.w),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorUtils.grey.withValues(alpha: 0.1),
        ),
        child: Icon(icon, size: 20.sp, color: color),
      ),
    );
  }
}
