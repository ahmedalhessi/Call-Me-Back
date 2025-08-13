import 'package:call_me_back/core/routes/routes_manager.dart';
import 'package:call_me_back/core/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../core/constants/colors_manager.dart';
import '../../core/constants/text_styles_manager.dart';
import '../../getx/controllers/auth/forget_password_controller.dart';

class ForgetPasswordScreen extends GetView<ForgetPasswordController> {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorsManager.scaffoldBg),
      body: Form(
        key: controller.formKey,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          children: [
            Center(
              child: Text('forgot_password'.tr, style: TextStylesManager.title),
            ),
            SizedBox(height: 29.h),
            Center(
              child: SizedBox(
                width: 259.w,
                child: Text(
                  'forgot_password_details'.tr,
                  style: TextStylesManager.subTitle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 92.h),
            TextFieldWidget(
              controller: controller.emailController,
              hintText: 'email'.tr,
              label: '',
            ),
            SizedBox(height: 74.h),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RoutesManager.verificationScreen);
              },
              child: Text('send'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
