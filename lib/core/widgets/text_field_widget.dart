import 'package:call_me_back/core/constants/images_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/get_utils.dart';

import '../constants/colors_manager.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.isPhone = false,
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.onChange,
    this.onEditingComplete,
    this.onSubmitted,
    required this.label,
  }) : height = 56;
  TextFieldWidget.search({
    super.key,
    required this.controller,
    this.suffixIcon,
    this.textInputAction = TextInputAction.next,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.isPhone = false,
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.onChange,
    this.onEditingComplete,
    this.onSubmitted,
  }) : hintText = 'Searching...',
       label = '',
       height = 50,
       prefixIcon = SvgPicture.asset(
         ImagesManager.searchIcon,
         width: 18.w,
         height: 18.h,
         fit: BoxFit.scaleDown,
       );

  final String label;
  final double height;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String hintText;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final bool isPassword;
  final bool isPhone;
  final bool obscureText;
  final int maxLines;
  final int minLines;
  final Function(String)? onChange;
  final Function()? onEditingComplete;
  final Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        label.isEmpty ? SizedBox() : Text(label),
        label.isEmpty ? SizedBox() : SizedBox(height: 10.h),
        SizedBox(
          height: height.h,
          child: TextFormField(
            controller: controller,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'required_field'.tr;
              } else if (isPassword && value.length < 6) {
                return 'password_condition'.tr;
              }
              return null;
            },
            textInputAction: textInputAction,
            keyboardType: isPhone ? TextInputType.phone : keyboardType,
            obscureText: obscureText,
            maxLines: maxLines,
            minLines: minLines,
            onChanged: onChange,

            onFieldSubmitted: onSubmitted,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 14.w,
                vertical: 20.h,
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                color: ColorsManager.subtitleColor,
                fontSize: 14.sp,
              ),
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              // prefixIcon: isPassword
              //     ? Icon(
              //         Icons.lock_outline_rounded,
              //         color: ColorsManager.subtitleColor,
              //         size: 24.h,
              //       )
              //     : isPhone
              //     ? Icon(
              //         Icons.phone_android_outlined,
              //         color: ColorsManager.subtitleColor,
              //         size: 24.h,
              //       )
              //     : prefixIcon,
              errorMaxLines: 2,
              errorStyle: const TextStyle(color: ColorsManager.danger),
              filled: true,
              fillColor: ColorsManager.white,
              isDense: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: const BorderSide(
                  color: ColorsManager.outlineBorder,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: const BorderSide(color: ColorsManager.primary),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: const BorderSide(color: ColorsManager.danger),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: const BorderSide(
                  color: ColorsManager.white,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: const BorderSide(color: ColorsManager.danger),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
