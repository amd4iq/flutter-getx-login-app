import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;

  final TextInputAction textInputAction;
  final Function(String)? onSubmitted;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.hintText,

    this.textInputAction = TextInputAction.done,
    this.onSubmitted,
    this.obscureText = false,
    this.keyboardType,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Get.currentRoute == Routes.SIGN_IN ? Colors.grey : Colors.white,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      width: Get.width * 0.85,
      child: TextField(
        cursorColor: Get.currentRoute == Routes.SIGN_IN ? Colors.grey : Colors.white,
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        obscuringCharacter: '*',
        onSubmitted: onSubmitted,
        textInputAction: textInputAction,
        style: TextStyle(
          color: Get.currentRoute == Routes.SIGN_IN ? Colors.grey : Colors.white
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Get.currentRoute == Routes.SIGN_IN ? Colors.grey : Colors.white,
          ),
        ),
      ),
    );
  }
}
