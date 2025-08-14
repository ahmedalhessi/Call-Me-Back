import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../core/constants/colors_manager.dart';
import '../../core/routes/routes_manager.dart';
import '../../core/constants/text_styles_manager.dart';
import '../../core/widgets/verify_field_widget.dart';
import '../../getx/controllers/auth/verification_controller.dart';

class VerificationScreen extends GetView<VerificationController> {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorsManager.scaffoldBg),
      body: ListView(
        padding: EdgeInsets.all(16.r),
        physics: const BouncingScrollPhysics(),
        children: [
          Center(
            child: Text(
              'email_verification'.tr,
              style: TextStylesManager.headline3,
            ),
          ),
          SizedBox(height: 29.h),
          SizedBox(
            width: 259.w,
            child: Text(
              '${'verification_note'.tr} ',
              style: TextStylesManager.paragraphRegularSubtitleColor,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 85.h),
          Center(
            child: SizedBox(
              height: 70.h,
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: GetBuilder<VerificationController>(
                  builder: (context) {
                    return ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        VerifyFieldWidget(
                          autofocus: true,
                          codeController: controller.firstCodeTextController,
                          focusNode: controller.firstFocusNode,
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              controller.secondFocusNode.requestFocus();
                            }
                            controller.updateCode();
                            controller.update();
                          },
                        ),
                        SizedBox(width: 10.w),
                        VerifyFieldWidget(
                          codeController: controller.secondCodeTextController,
                          focusNode: controller.secondFocusNode,
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              controller.thirdFocusNode.requestFocus();
                            } else {
                              controller.firstFocusNode.requestFocus();
                            }
                            controller.updateCode();
                            controller.update();
                          },
                        ),
                        SizedBox(width: 10.w),
                        VerifyFieldWidget(
                          codeController: controller.thirdCodeTextController,
                          focusNode: controller.thirdFocusNode,
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              controller.fourthFocusNode.requestFocus();
                            } else {
                              controller.secondFocusNode.requestFocus();
                            }
                            controller.updateCode();
                            controller.update();
                          },
                        ),
                        SizedBox(width: 10.w),
                        VerifyFieldWidget(
                          codeController: controller.fourthCodeTextController,
                          focusNode: controller.fourthFocusNode,
                          onChanged: (value) {
                            if (value.isEmpty) {
                              controller.thirdFocusNode.requestFocus();
                            }
                            controller.updateCode();
                            controller.update();
                          },
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 67.h),
          Obx(
            () => IgnorePointer(
              ignoring: controller.code.value.length != 4,
              child: ElevatedButton(
                onPressed: () async {
                  Get.toNamed(RoutesManager.resetPasswordScreen);
                },
                child: Text('send'.tr),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
