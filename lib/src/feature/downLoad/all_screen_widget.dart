import 'package:flutter/material.dart';
import 'package:video_downloader_app/src/feature/downLoad/download_item_model.dart';
import 'package:video_downloader_app/src/feature/downLoad/download_item_card_widget.dart';

class AllScreenWidget extends StatelessWidget {
  const AllScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final items = DownloadItemModel.mockData;
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return DownloadItemCardWidget(item: items[index]);
      },
    );
  }
}