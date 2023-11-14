import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_e_project/app/modules/authentication/forgot_password/controllers/forgot_password_controller.dart';
import 'package:getx_e_project/app/modules/authentication/widgets/costum_text_field.dart';

class ForgotPasswordFeilds extends GetView<ForgotPasswordController> {
  const ForgotPasswordFeilds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CustomTextField(
            controller: controller.resetPasswordController,
            textInputAction: TextInputAction.done,
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
        ],
      ),
    );
  }
}
