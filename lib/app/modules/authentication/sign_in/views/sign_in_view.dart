import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_e_project/app/modules/authentication/google_or_facebook/view/sign_in_sign_up_part.dart';
import 'package:getx_e_project/app/modules/authentication/sign_in/views/widgets/sign_in_and_button.dart';
import 'package:getx_e_project/app/modules/authentication/sign_in/views/widgets/sign_in_top_part.dart';

import '../controllers/sign_in_controller.dart';
import 'widgets/sign_in_feilds.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3C404B),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height,
          decoration: const BoxDecoration(
            // color: Colors.blue,
            image: DecorationImage(
              image: AssetImage('assets/screens/signin/signin.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * 0.22,
                ),
                // Top Part
                const SignInTopPart(),
                SizedBox(
                  height: Get.height * 0.25,
                ),
                // Text Fields
                const SignInFeilds(),

                // Sign In Button
                SignInAndButton(
                  onTap: () {
                    controller.signinWithFirebaseEmailAndPassword();
                  },
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),

                // Sign In With Google Or Facebook
                const SignInWithGoogleOrFacebook(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
