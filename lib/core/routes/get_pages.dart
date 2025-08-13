import 'package:call_me_back/getx/bindings/auth/sign_in_binding.dart';
import 'package:call_me_back/screens/auth/sign_in_screen.dart';
import 'package:call_me_back/screens/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../screens/intro/onboarding_screen.dart';
import 'routes_manager.dart';

final List<GetPage<dynamic>> getPages = [
  GetPage(
    name: RoutesManager.onboardingScreen,
    page: () => const OnboardingScreen(),
  ),
  GetPage(name: RoutesManager.homeScreen, page: () => const HomeScreen()),
  GetPage(
    name: RoutesManager.signInScreen,
    page: () => const SignInScreen(),
    binding: SignInBinding(),
  ),
];
