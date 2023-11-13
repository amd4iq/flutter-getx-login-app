import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_e_project/app/modules/authentication/sign_up/controllers/sign_up_controller.dart';
import 'package:getx_e_project/app/modules/authentication/widgets/custom_circle_button.dart';

class SignUpButton extends GetView<SignUpController> {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            )
          ],
        ),
        CustomCircleButton(
          onTap: () {
            controller.signUpWithFirebaseEmailAndPassword();
          },
        ),
      ],
    );
  }
}
