import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_e_project/app/modules/authentication/google_or_facebook/controller/sign_in_with_facebook_controller.dart';
import 'package:getx_e_project/app/modules/authentication/google_or_facebook/controller/sign_in_with_google_controller.dart';
import 'package:getx_e_project/app/modules/authentication/google_or_facebook/view/widgets/firebase_sign_in.dart';

class SignInWithGoogleOrFacebook extends StatelessWidget {
  const SignInWithGoogleOrFacebook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final SignInWithGoogle googleController = Get.put(SignInWithGoogle());
    final SignInWithFacebook facebookController = Get.put(SignInWithFacebook());
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            googleController.checkIfSigninOrSignUp();
          },
          child: Text(
            googleController.checkIfSigninOrSignUpText(),
            style: const TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
          ),
        ),
        const Spacer(),
        FireBaseSignInWith(
          image: 'assets/screens/signin/google-icon.png',
          onTap: () {
            googleController.signInWithGoogle();
          },
        ),
        SizedBox(
          width: Get.width * 0.05,
        ),
        FireBaseSignInWith(
          image: 'assets/screens/signin/facebook-icon.png',
          onTap: () {
            facebookController.signInWithFacebook();
          },
        ),
      ],
    );
  }
}
