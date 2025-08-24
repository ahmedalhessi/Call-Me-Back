import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constants/colors_manager.dart';
import '../../core/widgets/tab_bar_widget.dart';
import '../../getx/controllers/main/main_controller.dart';

class MainScreen extends GetView<MainController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.scaffoldBg,
        body: Obx(
          () => Center(
            child: Text(
              controller.labels[controller.selectedIndex.value],
              style: const TextStyle(fontSize: 24),
            ),
          ),
        ),
        bottomNavigationBar: TabBarWidget(controller: controller),
      ),
    );
  }
}
