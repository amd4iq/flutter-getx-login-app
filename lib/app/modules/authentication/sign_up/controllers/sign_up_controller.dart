import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_e_project/app/config/constants/storage_keys.dart';
import 'package:getx_e_project/app/config/services/services.dart';
import 'package:getx_e_project/app/routes/app_pages.dart';

class SignUpController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // Sign in user with email and password
  signUpWithFirebaseEmailAndPassword() async {
    // show loading dialog
    Get.dialog(
      const Center(
        child: CircularProgressIndicator(),
      ),
    );

    // try to sign in user with email and password
    try {
      if (passwordController.text.trim() ==
          confirmPasswordController.text.trim()) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );

        // save user email and password to local storage
        getStorage.write(signinWithFirebaseEmailAndPasswordKey, {
          'email': emailController.text.trim(),
          'password': passwordController.text.trim(),
        });

        // hide loading dialog
        Get.back();

        // navigate to home screen
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.back();
        Get.snackbar('Error', 'Password and confirm password not match');
      }
    } on FirebaseAuthException catch (e) {
      // hide loading dialog
      Get.back();
      wrongEmailOrPasswordMassage(e.code);
    }
  }

  // Show wrong email or password massage
  wrongEmailOrPasswordMassage(String massage) {
    Get.snackbar('Error', massage);
  }
}
