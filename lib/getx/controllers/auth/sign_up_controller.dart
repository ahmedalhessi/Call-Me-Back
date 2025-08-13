import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';

class SignUpController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final countryController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final passwordVisible = false.obs;
}
