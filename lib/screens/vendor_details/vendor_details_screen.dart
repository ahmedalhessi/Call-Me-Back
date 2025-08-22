import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/about.dart';
import 'widgets/featured_project.dart';
import 'widgets/info_vendor.dart';
import 'widgets/photo_and_video.dart';
import 'widgets/price_comparsion.dart';
import 'widgets/review_and_rating.dart';

class VendorDetailsScreen extends StatelessWidget {
  const VendorDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            InfoVendor(),
            Padding(
              padding: EdgeInsets.all(20.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    About(),
                    // Other sections
                    const PriceComparsion(),
                    SizedBox(height: 8.h),
                    const FeaturedProject(),
                    SizedBox(height: 8.h),
                    const PhotoAndVideo(),
                    SizedBox(height: 8.h),
                    const ReviewAndRating(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
