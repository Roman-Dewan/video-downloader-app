import 'package:video_downloader_app/src/data/model/audio_quality_model.dart';

class AudioQualityData {
  static const List<AudioQualityOption> options = [
    AudioQualityOption(
      name: 'High Quality',
      format: 'MP3',
      detail: '320 kbps',
      size: '~7.5 MB',
    ),
    AudioQualityOption(
      name: 'Very Good',
      format: 'MP3',
      detail: '256 kbps',
      size: '~6 MB',
    ),
    AudioQualityOption(
      name: 'Good',
      format: 'MP3',
      detail: '192 kbps',
      size: '~4.5 MB',
    ),
    AudioQualityOption(
      name: 'Standard',
      format: 'MP3',
      detail: '128 kbps',
      size: '~3 MB',
    ),
    AudioQualityOption(
      name: 'Lossless',
      format: 'FLAC',
      detail: 'FLAC',
      size: '~35 MB',
    ),
    AudioQualityOption(
      name: 'AAC',
      format: 'M4A',
      detail: '256 kbps',
      size: '~6 MB',
    ),
  ];
}
