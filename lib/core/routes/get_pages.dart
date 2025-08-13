import 'package:call_me_back/getx/bindings/auth/sign_in_binding.dart';
import 'package:call_me_back/getx/bindings/auth/sign_up_binding.dart';
import 'package:call_me_back/screens/auth/sign_in_screen.dart';
import 'package:call_me_back/screens/auth/sign_up_screen.dart';
import 'package:call_me_back/screens/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../getx/bindings/auth/forget_password_binding.dart';
import '../../getx/bindings/auth/reset_password_binding.dart';
import '../../getx/bindings/auth/verification_binding.dart';
import '../../screens/auth/forget_password_screen.dart';
import '../../screens/auth/reset_password_screen.dart';
import '../../screens/auth/verification_screen.dart';
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
  GetPage(
    name: RoutesManager.signUpScreen,
    page: () => const SignUpScreen(),
    binding: SignUpBinding(),
  ),
  GetPage(
    name: RoutesManager.forgetPasswordScreen,
    page: () => ForgetPasswordScreen(),
    binding: ForgetPasswordBinding(),
  ),
  GetPage(
    name: RoutesManager.verificationScreen,
    page: () => const VerificationScreen(),
    binding: VerificationBinding(),
  ),
  GetPage(
    name: RoutesManager.resetPasswordScreen,
    page: () => const ResetPasswordScreen(),
    binding: ResetPasswordBinding(),
  ),
];
