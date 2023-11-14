import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_e_project/app/routes/app_pages.dart';

class ForgotPasswordController extends GetxController {
  final resetPasswordController = TextEditingController();
  // check if user already sign up
  resetPasswordCheck() {
    if (resetPasswordController.text.trim().isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter your email',
        snackPosition: SnackPosition.TOP,
        animationDuration: const Duration(milliseconds: 500),
        backgroundColor: const Color.fromARGB(255, 148, 65, 65),
        colorText: Colors.white,
        duration: const Duration(seconds: 5),
        icon: const Icon(Icons.warning, color: Colors.white),
      );
    } else if (resetPasswordController.text.trim().isNotEmpty) {
      return FirebaseAuth.instance
          .fetchSignInMethodsForEmail(resetPasswordController.text.trim())
          .then((value) {
        resetPassword();
      });
    }
  }

  // firebase reset password
  resetPassword() async {
    // show loading dialog
    Get.dialog(
      const Center(
        child: CircularProgressIndicator(),
      ),
    );

    // try to send reset password email
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: resetPasswordController.text.trim());

      // go to login page
      Get.offNamed(Routes.SIGN_IN);
      // show success massage
      Get.snackbar(
        'Success',
        'Reset password email sent',
        snackPosition: SnackPosition.TOP,
        animationDuration: const Duration(milliseconds: 500),
        backgroundColor: const Color.fromARGB(255, 65, 120, 148),
        colorText: Colors.white,
        duration: const Duration(seconds: 5),
        icon: const Icon(Icons.warning, color: Colors.white),
      );
    } on FirebaseAuthException catch (e) {
      // hide loading dialog
      Get.back();

      // show error massage
      Get.snackbar('Error', e.code);
    }
  }
}
