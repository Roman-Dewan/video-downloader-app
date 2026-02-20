import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_downloader_app/src/core/my_style.dart';

class VideoUrlWidget extends StatelessWidget {
  const VideoUrlWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Video URL", style: MyStyle.generalText),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Paste Your video URL here... ",
                      hintStyle: MyStyle.extraText,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 1.h,
                        horizontal: 8.h,
                      ),
                      fillColor: Colors.white24,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                Expanded(
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      padding: EdgeInsetsGeometry.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8.r),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Paste", style: MyStyle.buttonText),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
