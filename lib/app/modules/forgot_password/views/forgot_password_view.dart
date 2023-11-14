import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_e_project/app/modules/forgot_password/controllers/forgot_password_controller.dart';
import 'package:getx_e_project/app/modules/forgot_password/views/widgets/forgot_password_feilds.dart';
import 'package:getx_e_project/app/routes/app_pages.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3C404B),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.offAllNamed(Routes.SIGN_IN);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.1,
                ),
                // Top Part
                const Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Enter your email to reset your password',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.25,
                ),
                // Text Fields
                const ForgotPasswordFeilds(),

                // Sign In Button
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    controller.resetPasswordCheck();
                  },
                  child: const Text('Reset Password'),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                const Text(
                  'We will send you a link to reset your password',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
