import 'package:call_me_back/core/constants/text_styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum CardType { normal, recommended }

class HomeSectionCard extends StatelessWidget {
  const HomeSectionCard({
    super.key,
    required this.title,
    required this.sectionList,
    required this.cardType,
    required this.onViewAllPressed,
  });
  final String title;
  final ListView sectionList;
  final CardType cardType;
  final VoidCallback onViewAllPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStylesManager.bodyBold),
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: TextButton(
                onPressed: onViewAllPressed,
                child: Text(
                  'View All',
                  style: TextStylesManager.paragraphRegularPrimaryColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        SizedBox(
          height: cardType == CardType.normal ? 160.h : 265.h,
          child: sectionList,
        ),
      ],
    );
  }
}
