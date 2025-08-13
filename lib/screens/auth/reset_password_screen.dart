import 'package:call_me_back/core/routes/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../core/constants/colors_manager.dart';
import '../../core/constants/text_styles_manager.dart';
import '../../core/widgets/text_field_widget.dart';
import '../../getx/controllers/auth/reset_password_controller.dart';

class ResetPasswordScreen extends GetView<ResetPasswordController> {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorsManager.scaffoldBg),
      body: Form(
        key: controller.formKey,
        child: ListView(
          padding: EdgeInsets.all(16.r),
          children: [
            Center(
              child: Text(
                'create_new_password'.tr,
                style: TextStylesManager.title,
              ),
            ),
            SizedBox(height: 29.h),
            Center(
              child: SizedBox(
                width: 256.w,
                child: Text(
                  'reset_password_subtitle'.tr,
                  style: TextStylesManager.subTitle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 64.h),
            Obx(
              () => TextFieldWidget(
                label: '',
                hintText: 'new_password'.tr,
                suffixIcon: Obx(
                  () => IconButton(
                    onPressed: () {
                      controller.newPasswordVisible(
                        !controller.newPasswordVisible.value,
                      );
                    },
                    icon: controller.newPasswordVisible.value
                        ? Icon(
                            Icons.visibility_outlined,
                            color: ColorsManager.subtitleColor,
                            size: 24.h,
                          )
                        : Icon(
                            Icons.visibility_off_outlined,
                            color: ColorsManager.subtitleColor,
                            size: 24.h,
                          ),
                  ),
                ),
                obscureText: !controller.newPasswordVisible.value,
                controller: controller.newPasswordController,
                isPassword: true,
              ),
            ),
            SizedBox(height: 8.h),
            Obx(
              () => TextFieldWidget(
                label: '',
                hintText: 'confirm_passwoed'.tr,
                suffixIcon: Obx(
                  () => IconButton(
                    onPressed: () {
                      controller.confirmPasswordVisible(
                        !controller.confirmPasswordVisible.value,
                      );
                    },
                    icon: controller.confirmPasswordVisible.value
                        ? Icon(
                            Icons.visibility_outlined,
                            color: ColorsManager.subtitleColor,
                            size: 24.h,
                          )
                        : Icon(
                            Icons.visibility_off_outlined,
                            color: ColorsManager.subtitleColor,
                            size: 24.h,
                          ),
                  ),
                ),
                obscureText: !controller.confirmPasswordVisible.value,
                controller: controller.confirmNewPasswordController,
                isPassword: true,
              ),
            ),
            SizedBox(height: 30.h),
            ElevatedButton(
              onPressed: () async {
                await _performResetPassword();
                // if (controller.formKey.currentState!.validate()) {
                //   controller.isChanging(false);
                //   await _performResetPassword();
                // }
              },
              child: Text('send'.tr),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  Future<void> _performResetPassword() async {
    Get.offAllNamed(RoutesManager.onboardingScreen);
  }
}
