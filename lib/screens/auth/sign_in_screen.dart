import 'package:call_me_back/core/constants/images_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/constants/colors_manager.dart';
import '../../core/constants/text_styles_manager.dart';
import '../../core/routes/routes_manager.dart';
import '../../core/widgets/loading_widget.dart';
import '../../core/widgets/text_field_widget.dart';
import '../../getx/controllers/auth/sign_in_controller.dart';

class SignInScreen extends GetView<SignInController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Form(
            key: controller.formKey,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              children: [
                SizedBox(height: 95.5.h),
                Image.asset(ImagesManager.logo, width: 70.w, height: 70.h),
                SizedBox(height: 29.4.h),
                Center(
                  child: Text(
                    'sign_in_title'.tr,
                    style: TextStylesManager.headline3,
                  ),
                ),
                SizedBox(height: 10.6.h),
                Center(
                  child: Text(
                    'sign_in_subtitle'.tr,
                    style: TextStylesManager.paragraphRegularSubtitleColor,
                  ),
                ),
                SizedBox(height: 77.h),
                TextFieldWidget(
                  label: '',
                  hintText: 'sign_in_placeholder'.tr,
                  controller: controller.phoneController,
                  // isPhone: true,
                ),
                SizedBox(height: 16.h),
                Obx(
                  () => TextFieldWidget(
                    label: '',
                    hintText: 'password'.tr,
                    suffixIcon: Obx(
                      () => IconButton(
                        onPressed: () {
                          controller.passwordVisible(
                            !controller.passwordVisible.value,
                          );
                        },
                        icon: controller.passwordVisible.value
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
                    obscureText: !controller.passwordVisible.value,
                    controller: controller.passwordController,
                    isPassword: true,
                  ),
                ),
                SizedBox(height: 18.h),
                TextButton(
                  onPressed: () {
                    Get.toNamed(RoutesManager.forgetPasswordScreen);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    textStyle: TextStylesManager.paragraphRegularPrimaryColor,
                    alignment: AlignmentDirectional.topEnd,
                  ),
                  child: Text('forget_password'.tr),
                ),
                SizedBox(height: 50.h),
                ElevatedButton(
                  onPressed: () async {
                    await _performLogin();
                    // if (controller.formKey.currentState!.validate()) {
                    //   controller.isLogging(true);
                    //   await _performLogin();
                    // }
                  },
                  child: Text('sign_in'.tr),
                ),
                SizedBox(height: 30.h),
                ElevatedButton(
                  onPressed: () async {
                    await _performLoginWithGoogle();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsManager.white,
                    foregroundColor: ColorsManager.subtitleColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(ImagesManager.googleIcon),
                      SizedBox(width: 10.w),
                      Text('google_sign_in'.tr),
                    ],
                  ),
                ),
                SizedBox(height: 68),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('no_account'.tr),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(RoutesManager.signUpScreen);
                      },
                      child: Text('sign_up'.tr),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Obx(
            () => Visibility(
              visible: controller.isLogging.value,
              child: const LoadingWidget(),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _performLogin() async {
    controller.isLogging.value = false;
    Get.offNamed(RoutesManager.onboardingScreen);
  }

  Future<void> _performLoginWithGoogle() async {
    controller.isLogging.value = false;
    // Get.offNamed(RoutesManager.signUpScreen);
  }
}
