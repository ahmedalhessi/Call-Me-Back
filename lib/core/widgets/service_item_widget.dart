import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/text_styles_manager.dart';

class ServiceItemWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  // final double containerHeight;
  final double imageHeight;
  final int maxLines;
  final TextStyle nameStyle;
  final TextStyle priceStyle;
  final VoidCallback onPressed;

  ServiceItemWidget.recommendedCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.onPressed,
  }) : imageHeight = 165,
       nameStyle = TextStylesManager.paragraphSemibold,
       priceStyle = TextStylesManager.paragraphRegularSubtitleColor,
       maxLines = 2;

  ServiceItemWidget.normalCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.onPressed,
  }) : imageHeight = 86,
       nameStyle = TextStylesManager.paragraphRegular,
       priceStyle = TextStylesManager.captionRegularSubtitleColor,
       maxLines = 1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 159.w,
        // height: containerHeight.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: imageHeight.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                ),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: nameStyle,
                    maxLines: maxLines,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 11.h),
                  Text(
                    price,
                    style: priceStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
