import 'package:flutter/material.dart';
import 'package:video_downloader_app/src/data/dummy_data/download_item_data.dart';
import 'package:video_downloader_app/src/feature/downLoad/download_item_card_widget.dart';

class VideoScreenWidget extends StatelessWidget {
  const VideoScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final items = DownloadItemData.videoItems;
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return DownloadItemCardWidget(item: items[index]);
      },
    );
  }
}