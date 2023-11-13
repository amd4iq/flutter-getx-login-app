import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInWithFacebook extends GetxController {
  signInWithFacebook() {
    //! Todo: 'Implement signInWithFacebook';
    Get.snackbar('Soon', 'Facebook sign in will be implemented soon',
        snackPosition: SnackPosition.TOP,
        animationDuration: const Duration(milliseconds: 500),
        backgroundColor: const Color.fromARGB(255, 65, 120, 148),
        colorText: Colors.white,
        duration: const Duration(seconds: 5),
        icon: const Icon(Icons.warning, color: Colors.white));
  }
}
