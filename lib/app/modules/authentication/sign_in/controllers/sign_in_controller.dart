import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_e_project/app/config/constants/storage_keys.dart';
import 'package:getx_e_project/app/config/services/services.dart';
import 'package:getx_e_project/app/routes/app_pages.dart';

class SignInController extends GetxController {
  // Text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign in user with email and password
  signinWithFirebaseEmailAndPassword() async {
    // show loading dialog
    Get.dialog(
      const Center(
        child: CircularProgressIndicator(),
      ),
    );

    // try to sign in user with email and password
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
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

  // Sign out user
  singUserOut() {
    FirebaseAuth.instance.signOut().then((value) {
      getStorage.remove(signinWithFirebaseEmailAndPasswordKey);
      getStorage.remove(isSignedInWithGoogle);
      Get.offAllNamed(Routes.SIGN_IN);
    }).catchError((e) {
      Get.snackbar('Error', e.toString());
    });
  }
}
