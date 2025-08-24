import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../getx/controllers/main/main_controller.dart';
import '../constants/colors_manager.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key, required this.controller});

  final MainController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            elevation: 0,
            onTap: controller.onTapItem,
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.selectedIndex.value,
            backgroundColor: Colors.transparent,
            selectedItemColor: ColorsManager.primary,
            unselectedItemColor: ColorsManager.tabBarUnselected,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            items: List.generate(controller.icons.length, (index) {
              return BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  controller.icons[index],
                  color: controller.selectedIndex.value == index
                      ? ColorsManager.primary
                      : ColorsManager.tabBarUnselected,
                ),
                label: controller.labels[index],
              );
            }),
          ),
        ),
      );
    });
  }
}
