import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_downloader_app/src/core/my_style.dart';

class VideoUrlWidget extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onPressed;
  const VideoUrlWidget({
    super.key,
    required this.onPressed,
    required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Video URL", style: MyStyle.generalText),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 48.h,
                    child: TextFormField(
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: "Paste Your video URL here... ",
                        hintStyle: MyStyle.extraText,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 1.h,
                          horizontal: 8.h,
                        ),
                        fillColor: Colors.white24,
                        filled: true,

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                Expanded(
                  child: SizedBox(
                    height: 48.h,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        padding: EdgeInsetsGeometry.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8.r),
                        ),
                      ),
                      onPressed: onPressed,
                      child: Text("Paste", style: MyStyle.buttonText),
                    ),
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
