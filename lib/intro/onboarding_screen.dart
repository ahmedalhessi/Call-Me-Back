import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../core/constants/colors_manager.dart';
import '../core/constants/images_manager.dart';
import '../core/routes/routes_manager.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          physics: const BouncingScrollPhysics(),
          controller: pageController,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.h),
              child: Column(
                children: [
                  Image.asset(ImagesManager.onboarding1),
                  SizedBox(height: 32.h),
                  Text(
                    'Professional Vendors'.tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: ColorsManager.onBoardingTitle,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 24.h),
                  SizedBox(
                    width: 240.w,
                    child: Text(
                      'And now, you can create the new password and confirm it'
                          .tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: ColorsManager.onBoardingbody,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  SizedBox(
                    height: 6,
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, listViewIndex) {
                        return Container(
                          height: 6.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                            color: index == listViewIndex
                                ? ColorsManager.buttonBg
                                : ColorsManager.onBoardingUnselected,
                            borderRadius: BorderRadius.circular(3.r),
                            // border: Border.all(color: ColorsManager.onBoardingUnselected),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 7.w);
                      },
                    ),
                  ),
                  SizedBox(height: 24.h),
                  ElevatedButton(
                    onPressed: () {
                      if (index == 2) {
                        Get.offAllNamed(RoutesManager.homeScreen);
                      } else {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(692, 56.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      backgroundColor: ColorsManager.buttonBg,
                      foregroundColor: ColorsManager.white,
                    ),
                    child: Text('Let\'s Start'.tr),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
