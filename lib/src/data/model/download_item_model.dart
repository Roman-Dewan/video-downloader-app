import 'package:flutter/material.dart';

enum DownloadType { video, audio }

class DownloadItemModel {
  final String title;
  final String quality;
  final String fileSize;
  final String timeAgo;
  final DownloadType type;
  final Color thumbnailColor;
  final IconData thumbnailIcon;
  final bool isDownloading;
  final double downloadProgress;

  const DownloadItemModel({
    required this.title,
    required this.quality,
    required this.fileSize,
    required this.timeAgo,
    required this.type,
    required this.thumbnailColor,
    required this.thumbnailIcon,
    this.isDownloading = false,
    this.downloadProgress = 0.0,
  });
}
