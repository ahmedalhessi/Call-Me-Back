import 'package:call_me_back/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../intro/onboarding_screen.dart';
import 'routes_manager.dart';

final List<GetPage<dynamic>> getPages = [
  GetPage(
    name: RoutesManager.onboardingScreen,
    page: () => const OnboardingScreen(),
  ),
  GetPage(name: RoutesManager.homeScreen, page: () => const HomeScreen()),
];
