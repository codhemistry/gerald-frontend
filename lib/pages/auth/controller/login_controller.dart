import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:gerald_app/core/global_components/custom_dialog.dart';
import 'package:gerald_app/core/utils/routes_screen.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  
  var isHidden = true.obs;

  void showPassword() {
    isHidden.value = !isHidden.value;
  }

  void login() async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar('Error', 'Please fill all fields');
    } else {
      try {
        UserCredential userCredential = await auth.signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);

        if (userCredential.user != null) {
          if (userCredential.user!.emailVerified == true) {
            Get.offAllNamed(NavigationRoute.mainMenu);
            Get.snackbar('Success', 'User logged in successfully');
          } else {
            CustomDialog(
              title: 'Email not verified',
              message: 'Please verify your email, Did not receive verification email?',
              onLeftButtonPressed: () async {
                try{
                  await userCredential.user!.sendEmailVerification();
                  Get.snackbar('Success', 'Verification email sent');
                  Get.back();
                }
                catch(e){
                  print(e);
                  Get.snackbar('Error', e.toString());
                }
              },
              onRightButtonPressed: (){},
              leftButtonText: 'Resend',
              rightButtonText: 'Cancel',
            );
          }
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          Get.snackbar('Error', 'No user found for that email.');
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          Get.snackbar('Error', 'Wrong password provided for that user.');
          print('Wrong password provided for that user.');
        }
        else {
          Get.snackbar('Error', 'Wrong password provided for that user.');
        }
      }
    }
  }
  
}
