import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedProject extends StatelessWidget {
  const FeaturedProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(15.w),
            child: Text(
              "Featured Projects",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
            ),
          ),
          Container(height: 0.5.h, color: const Color(0xFF979797)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
            child: SizedBox(
              // List height scales, and image+texts fit comfortably
              height: 230.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 6, // make it dynamic later
                separatorBuilder: (_, __) => SizedBox(width: 12.w),
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                itemBuilder: (context, index) => _ProjectTile(
                  title: "The grass is Always Greener for Katie",
                  priceLabel: "Approx. \$50",
                  imagePath: "assets/images/vendor_details/HeaderPhoto.png",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProjectTile extends StatelessWidget {
  const _ProjectTile({
    required this.title,
    required this.priceLabel,
    required this.imagePath,
  });

  final String title;
  final String priceLabel;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    // Make card width adapt to screen size and not exceed a nice max on tablets
    final double cardWidth = (0.68.sw).clamp(210.w, 320.w);

    return SizedBox(
      width: cardWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Keep image ratio consistent & clip corners crisply
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: AspectRatio(
              aspectRatio: 16 / 10, // looks good across phones/tablets
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  color: const Color(0xFFF0F3F8),
                  alignment: Alignment.center,
                  child: Icon(Icons.broken_image_outlined, size: 24.r),
                ),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            title,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 4.h),
          Text(
            priceLabel,
            style: TextStyle(color: const Color(0xFF8F9BB3), fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}
