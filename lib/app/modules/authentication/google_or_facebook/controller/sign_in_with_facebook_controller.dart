import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_e_project/app/config/constants/storage_keys.dart';

import 'package:getx_e_project/app/routes/app_pages.dart';

class SignInWithFacebook extends GetxController {
  signInWithFacebook() async {
    // begin Facebook sign in
    final LoginResult result = await FacebookAuth.instance.login();

    // create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(result.accessToken!.token);

    // once signed in, return the UserCredential
    final UserCredential userCredential = await FirebaseAuth.instance
        .signInWithCredential(facebookAuthCredential);

    // Get user data
    final userData = await FacebookAuth.instance.getUserData();

    // show loading dialog
    Get.dialog(const Center(child: CircularProgressIndicator()),
        barrierDismissible: false);

    // Save user data to local storage
    await GetStorage().write(isSignedInWithFacebook, {
      'name': userData['name'],
      'email': userData['email'],
      'picture': userData['picture']['data']['url'],
      'token': result.accessToken!.token,
    });

    // Close loading dialog
    Get.back();

    // Navigate to home page
    Get.offAllNamed(Routes.HOME);

    // return userCredential;
    return userCredential.user;
    // end Facebook sign in
  }
}
