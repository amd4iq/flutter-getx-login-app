import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_e_project/app/modules/authentication/widgets/costum_text_field.dart';

import '../../controllers/sign_in_controller.dart';

class SignInFeilds extends GetView<SignInController> {
  const SignInFeilds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CustomTextField(
            controller: controller.emailController,
            textInputAction: TextInputAction.next,
            hintText: 'Email',

            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          CustomTextField(
            controller: controller.passwordController,
            hintText: 'Password',
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,

          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
        ],
      ),
    );
  }
}
