import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_e_project/app/modules/authentication/google_or_facebook/view/sign_in_sign_up_part.dart';
import 'package:getx_e_project/app/modules/authentication/sign_up/views/widgets/sign_up_and_button.dart';
import 'package:getx_e_project/app/modules/authentication/sign_up/views/widgets/sign_up_feilds.dart';
import 'package:getx_e_project/app/modules/authentication/sign_up/views/widgets/sign_up_top_part.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});
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
              image: AssetImage('assets/screens/signup/signup.png'),
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
                const SignUpTopPart(),
                SizedBox(
                  height: Get.height * 0.166,
                ),
                // Text Fields
                const SignUpTextFeilds(),

                // Sign Up Button
                const SignUpButton(),

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
