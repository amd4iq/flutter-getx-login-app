import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_e_project/app/modules/authentication/sign_in/controllers/sign_in_controller.dart';
import 'package:getx_e_project/app/modules/authentication/widgets/custom_circle_button.dart';

class SignInAndButton extends GetView<SignInController> {
  final void Function()? onTap;
  const SignInAndButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sign In',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            const Text('Forgot Password?',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 14,
                  color: Colors.grey,
                )),
          ],
        ),
        CustomCircleButton(
          onTap: onTap,
        ),
      ],
    );
  }
}
