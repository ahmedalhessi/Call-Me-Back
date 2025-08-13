import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors_manager.dart';

class VerifyFieldWidget extends StatelessWidget {
  const VerifyFieldWidget({
    super.key,
    required this.codeController,
    required this.focusNode,
    required this.onChanged,
    this.autofocus = false,
  });

  final TextEditingController codeController;
  final FocusNode focusNode;
  final void Function(String)? onChanged;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: 70.w,
      child: TextFormField(
        controller: codeController,
        focusNode: focusNode,
        onChanged: onChanged,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 24.sp, color: ColorsManager.titleColor),
        textAlign: TextAlign.center,
        maxLength: 1,
        cursorColor: ColorsManager.primary,
        cursorHeight: 40.h,
        autofocus: autofocus,
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: ColorsManager.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: Color(0xFFEFF0F3)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: Color(0xFFEFF0F3)),
          ),
        ),
      ),
    );
  }
}
