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

  static List<DownloadItemModel> mockData = [
    DownloadItemModel(
      title: 'How to Build React Apps - Complete Tutorial',
      quality: '1080p MP4',
      fileSize: '285 MB',
      timeAgo: '2 hours ago',
      type: DownloadType.video,
      thumbnailColor: Colors.red.shade700,
      thumbnailIcon: Icons.videocam,
    ),
    DownloadItemModel(
      title: 'Relaxing Piano Music for Study',
      quality: '320 kbps MP3',
      fileSize: '7.5 MB',
      timeAgo: 'Yesterday',
      type: DownloadType.audio,
      thumbnailColor: Colors.purple.shade300,
      thumbnailIcon: Icons.music_note,
    ),
    DownloadItemModel(
      title: 'JavaScript Advanced Concepts Explained',
      quality: '720p MP4',
      fileSize: '152 MB',
      timeAgo: '',
      type: DownloadType.video,
      thumbnailColor: Colors.red.shade700,
      thumbnailIcon: Icons.videocam,
      isDownloading: true,
      downloadProgress: 0.67,
    ),
    DownloadItemModel(
      title: 'Nature Sounds - Ocean Waves',
      quality: '256 kbps M4A',
      fileSize: '6 MB',
      timeAgo: '1 week ago',
      type: DownloadType.audio,
      thumbnailColor: Colors.purple.shade300,
      thumbnailIcon: Icons.music_note,
    ),
  ];

  static List<DownloadItemModel> get videoItems =>
      mockData.where((item) => item.type == DownloadType.video).toList();

  static List<DownloadItemModel> get audioItems =>
      mockData.where((item) => item.type == DownloadType.audio).toList();
}
