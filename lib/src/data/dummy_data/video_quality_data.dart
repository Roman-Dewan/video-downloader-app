import 'package:video_downloader_app/src/data/model/video_quality_model.dart';

class VideoQualityData {
  static const List<VideoQualityOption> options = [
    VideoQualityOption(
      name: '4K Ultra HD',
      format: 'MP4',
      detail: '2160p',
      size: '~850 MB',
    ),
    VideoQualityOption(
      name: '2K Quad HD',
      format: 'MP4',
      detail: '1440p',
      size: '~520 MB',
    ),
    VideoQualityOption(
      name: 'Full HD',
      format: 'MP4',
      detail: '1080p',
      size: '~280 MB',
    ),
    VideoQualityOption(
      name: 'HD',
      format: 'MP4',
      detail: '720p',
      size: '~150 MB',
    ),
    VideoQualityOption(
      name: 'SD',
      format: 'MP4',
      detail: '480p',
      size: '~80 MB',
    ),
    VideoQualityOption(
      name: 'Low',
      format: 'MP4',
      detail: '360p',
      size: '~45 MB',
    ),
  ];
}
