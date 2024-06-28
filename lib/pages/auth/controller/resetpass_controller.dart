import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ResetpassController extends GetxController {
  TextEditingController emailController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void resetPassword() async {
    if (emailController.text.isEmpty) {
      Get.snackbar('Error', 'Please fill email field');
    } else {
      try {
        await auth.sendPasswordResetEmail(email: emailController.text);
        Get.snackbar('Success', 'Password reset email sent');
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          Get.snackbar('Error', 'No user found for that email.');
          print('No user found for that email.');
        }
      }
    }
  }
}
