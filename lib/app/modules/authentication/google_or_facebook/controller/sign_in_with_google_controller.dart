import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_e_project/app/config/constants/storage_keys.dart';
import 'package:getx_e_project/app/config/services/services.dart';
import 'package:getx_e_project/app/routes/app_pages.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInWithGoogle extends GetxController {
  signInWithGoogle() async {
    // begin Google sign in
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    // obtain the auth details from the request
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    // create a new credential for user
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

    // show loading dialog
    Get.dialog(
      const Center(
        child: CircularProgressIndicator(),
      ),
    );

    try {
      // once signed in, return the UserCredential
      final UserCredential user =
          await FirebaseAuth.instance.signInWithCredential(credential);

      // save user email and password to local storage
      getStorage.write(isSignedInWithGoogle, {
        'email': user.user!.email,
        'password': user.user!.uid,
      });

      // redirect to home page
      Get.offAllNamed(Routes.HOME);

      return user;
    } catch (e) {
      // close loading dialog
      Get.back();

      // show error dialog
      Get.dialog(
        AlertDialog(
          title: const Text('Error'),
          content: Text(e.toString()),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  // check if current page is sign in or sign up
  checkIfSigninOrSignUp() {
    if (Get.currentRoute == Routes.SIGN_IN) {
      Get.toNamed(Routes.SIGN_UP);
    } else {
      Get.toNamed(Routes.SIGN_IN);
    }
  }

  // check if the text for current page is sign in or sign up
  checkIfSigninOrSignUpText() {
    if (Get.currentRoute == Routes.SIGN_IN) {
      return 'Sign Up';
    } else {
      return 'Sign In';
    }
  }



}
