import 'package:flutter/widgets.dart';
import 'package:gerald_app/core/utils/routes_screen.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var isHidden = true.obs;

  void showPassword() {
    isHidden.value = !isHidden.value;
  }

  void login(){
    Get.offAllNamed(NavigationRoute.mainMenu);
  }
  
}
