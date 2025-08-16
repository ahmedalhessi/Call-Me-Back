import 'package:call_me_back/core/constants/colors_manager.dart';
import 'package:call_me_back/core/constants/text_styles_manager.dart';
import 'package:call_me_back/core/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeaderCard extends StatelessWidget {
  const HomeHeaderCard({
    super.key,
    required this.name,
    required this.searchController,
  });
  final String name;
  final TextEditingController searchController;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),

      decoration: BoxDecoration(
        color: ColorsManager.primary,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Hey, ',
                  style: TextStylesManager.bodySemibold,
                ), //TODO: Localize
                TextSpan(
                  text: name,
                  style: TextStylesManager.bodySemiboldWhite,
                ),
              ],
            ),
          ),
          Text(
            'Can I help you something?', //TODO: Localize
            style: TextStylesManager.paragraphRegular.copyWith(
              color: Color(0xFF9CC1E9),
            ),
          ),
          SizedBox(height: 20.h),
          TextFieldWidget.search(controller: searchController),
          //TODO: build Cateogories
        ],
      ),
    );
  }
}
