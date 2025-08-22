import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // About
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(15.w),
                child: Text(
                  "About",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                  ),
                ),
              ),
              Container(height: 0.5.h, color: const Color(0xFF979797)),
              Padding(
                padding: EdgeInsets.all(15.w),
                child: Text(
                  "I love what I do! Love the outdoors. I'm always willing to go the extra mile to satisfy our customer. Call or message me — same day services.",
                  style: TextStyle(
                    color: const Color(0xFF8F9BB3),
                    fontSize: 14.sp,
                    height: 1.35,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h),

        // Questions / actions
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.w),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "You have questions",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.5.sp,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Wrap(
                  spacing: 10.w,
                  children: [
                    FloatingActionButton(
                      heroTag: "about_call",
                      backgroundColor: const Color(0xFF00E096),
                      mini: true,
                      onPressed: () {},
                      child: Icon(Icons.phone, size: 18.r),
                    ),
                    FloatingActionButton(
                      heroTag: "about_msg",
                      mini: true,
                      onPressed: () {},
                      child: Icon(Icons.messenger_outline_sharp, size: 18.r),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 8.h),

        // Overview
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(15.w),
                child: Text(
                  "Overview",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.5.sp,
                  ),
                ),
              ),
              Container(height: 0.5.h, color: const Color(0xFF979797)),
              itemOverView(title: "Hired 50 times", iconName: "bolt"),
              itemOverView(
                title: "Background checked",
                iconName: "checkmark-square",
              ),
              itemOverView(title: "Locally owned", iconName: "users"),
              itemOverView(title: "Since 2018", iconName: "calendar"),
            ],
          ),
        ),
        SizedBox(height: 8.h),

      
      ],
    );
  }
}

Widget itemOverView({required String title, required String iconName}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
    child: Row(
      children: [
        SvgPicture.asset(
          "assets/images/icons/$iconName.svg",
          width: 20.r,
          height: 20.r,
          color: Colors.grey.shade400,
        ),
        SizedBox(width: 9.w),
        Expanded(
          child: Text(
            title,
            style: TextStyle(fontSize: 13.5.sp),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ),
  );
}
