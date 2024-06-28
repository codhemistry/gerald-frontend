import 'package:flutter/material.dart';
import 'package:gerald_app/core/global_components/base_widget_container.dart';
import 'package:gerald_app/core/global_components/custom_backbutton.dart';
import 'package:gerald_app/core/global_components/custom_button.dart';
import 'package:gerald_app/core/global_components/custom_textfield.dart';
import 'package:gerald_app/core/global_components/global_text.dart';
import 'package:gerald_app/core/utils/routes_screen.dart';
import 'package:gerald_app/pages/auth/controller/resetpass_controller.dart';
import 'package:get/get.dart';

class ForgotpassScreen extends StatelessWidget {
  final forgotpassController = Get.put(ResetpassController());

  @override
  Widget build(BuildContext context) {
    return BaseWidgetContainer(
      appBar: AppBar(
        title: GlobalText(
          text: 'Forgot Password',
          fontSize: 20,
          type : TextType.bold,
        ),
        centerTitle: true,
        leading: CustomBackButton(
            onPressed: () {
              Get.offAllNamed(NavigationRoute.login);
            },
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            GlobalText(text: 'Enter your email to reset your password', fontSize: 18, textAlign: TextAlign.center),
            SizedBox(height: 20),
            CustomTextField(
              label: 'Email', 
              placeholder: 'email',
              controller: forgotpassController.emailController,
            ),
            SizedBox(height: 20),
            GlobalButton(
              text: 'Reset Password',
              onPressed: () {
                forgotpassController.resetPassword();
              },
            ),
          ],
        ),
      ),
    );
  }
}