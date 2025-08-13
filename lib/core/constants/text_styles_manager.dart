import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/colors_manager.dart';

class TextStylesManager {
  static final TextStyle title = TextStyle(
    fontSize: 30.sp,
    color: ColorsManager.titleColor,
  );
  static final TextStyle subTitle = TextStyle(
    fontSize: 15.sp,
    color: ColorsManager.subtitleColor,
  );
}
