import 'package:call_me_back/core/constants/text_styles_manager.dart';
import 'package:call_me_back/core/routes/routes_manager.dart';
import 'package:call_me_back/core/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../core/constants/colors_manager.dart';
import '../../getx/controllers/auth/sign_up_controller.dart';

class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorsManager.scaffoldBg),
      body: Form(
        key: controller.formKey,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 19.h, horizontal: 16.w),
          children: [
            Center(child: Text('sign_up'.tr, style: TextStylesManager.title)),
            SizedBox(height: 27.h),
            Center(
              child: Text('write_info'.tr, style: TextStylesManager.subTitle),
            ),
            SizedBox(height: 51.h),
            TextFieldWidget(
              controller: controller.nameController,
              hintText: 'full_name'.tr,
              label: '',
            ),
            TextFieldWidget(
              controller: controller.nameController,
              hintText: 'email'.tr,
              label: '',
            ),
            TextFieldWidget(
              controller: controller.nameController,
              hintText: 'password'.tr,
              label: '',
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
              isPassword: true,
            ),
            TextFieldWidget(
              controller: controller.countryController,
              hintText: '(000)00 000 0000',
              label: '',
            ),
            TextFieldWidget(
              controller: controller.dateOfBirthController,
              hintText: 'date_of_birth'.tr,
              label: '',
            ),
            SizedBox(height: 40.h),
            ElevatedButton(onPressed: () {}, child: Text('sign_up'.tr)),
            SizedBox(height: 76.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('have_account'.tr),
                TextButton(
                  onPressed: () {
                    Get.offAllNamed(RoutesManager.signInScreen);
                  },
                  child: Text('sign_in'.tr),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
