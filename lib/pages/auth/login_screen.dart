import 'package:flutter/material.dart';
import 'package:gerald_app/core/constants/images.dart';
import 'package:gerald_app/core/constants/text.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:gerald_app/core/global_components/custom_button.dart';
import 'package:gerald_app/core/global_components/global_text.dart';
import 'package:gerald_app/core/utils/routes_screen.dart';
import 'package:gerald_app/pages/auth/controller/login_controller.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return BaseWidgetContainer(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    Images.login,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.white.withOpacity(0.7), // 70% opacity
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  const GlobalText(text: LoginScreenText.welcome, type: TextType.bold, fontSize: 24.0),
                  const SizedBox(height: 16),
                  TextField(
                    controller: loginController.emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      labelText: LoginScreenText.useremail,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Obx(() => TextField(
                        obscureText: loginController.isHidden.value,
                        controller: loginController.passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          labelText: LoginScreenText.password,
                          suffixIcon: IconButton(
                            icon: Icon(
                              loginController.isHidden.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.black,
                              size: 20,
                            ),
                            onPressed: () {
                              loginController.showPassword();
                            },
                          ),
                        ),
                      )),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        Get.offAllNamed(NavigationRoute.forgotpass);
                      },
                      child: const Text(LoginScreenText.forgotPassword),
                    ),
                  ),
                  const SizedBox(height: 16),
                  GlobalButton(
                    onPressed: () {
                      loginController.login();
                    },
                    text: LoginScreenText.login,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}