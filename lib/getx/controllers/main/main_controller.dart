import 'package:get/get.dart';

import '../../../core/constants/images_manager.dart';

class MainController extends GetxController {
  var selectedIndex = 0.obs;

  final List<String> icons = [
    ImagesManager.homeIcon,
    ImagesManager.tasksIcon,
    ImagesManager.inboxIcon,
    ImagesManager.profileIcon,
  ];

  final List<String> labels = ["Home", "Tasks", "Inbox", "Profile"];

  void onTapItem(int index) {
    selectedIndex.value = index;
    update();
  }
}
