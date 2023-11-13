import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_e_project/app/modules/authentication/sign_up/controllers/sign_up_controller.dart';
import 'package:getx_e_project/app/modules/authentication/widgets/costum_text_field.dart';

class SignUpTextFeilds extends GetView<SignUpController> {
  const SignUpTextFeilds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CustomTextField(
            controller: controller.emailController,
            hintText: 'Email',
            textInputAction: TextInputAction.next,

            keyboardType: TextInputType.name,
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          CustomTextField(
            controller: controller.passwordController,
            hintText: 'Password',
            textInputAction: TextInputAction.next,

            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          CustomTextField(
            controller: controller.confirmPasswordController,
            hintText: 'Confirm Password',
            obscureText: true,

            keyboardType: TextInputType.visiblePassword,
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
        ],
      ),
    );
  }
}
