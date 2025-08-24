import 'package:call_me_back/screens/home/filter_screen.dart';
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
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  controller.labels[controller.selectedIndex.value],
                  style: const TextStyle(fontSize: 24),
                ),
              ),
              if (controller.selectedIndex.value == 0) ...[
                SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return FilterScreen();
                        },
                      ),
                    );
                  },
                  icon: Icon(Icons.sort_rounded),
                ),
              ],
            ],
          ),
        ),
        bottomNavigationBar: TabBarWidget(controller: controller),
      ),
    );
  }
}
