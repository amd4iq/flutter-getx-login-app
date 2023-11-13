import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:getx_e_project/app/config/constants/storage_keys.dart';
import 'package:getx_e_project/app/config/services/services.dart';
import 'package:getx_e_project/app/modules/authentication/widgets/custom_circle_button.dart';
import 'package:getx_e_project/app/routes/app_pages.dart';

class OnboardingView extends GetView {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/screens/onboarding/onboarding.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * 0.35,
            ),
            // Top Part
            topPartText(),
            SizedBox(
              height: Get.height * 0.27,
            ),
            // Bottom Part
            buttomPart(),
          ],
        ),
      ),
    );
  }

  Padding topPartText() {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Animate(
            effects: const [
              FadeEffect(
                duration: Duration(milliseconds: 1000),
                delay: Duration(milliseconds: 1000),
              ),
            ],
            child: const Text(
              'Take Notes..',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
          Animate(
            effects: const [
              FadeEffect(
                duration: Duration(milliseconds: 1000),
                delay: Duration(milliseconds: 1500),
              ),
            ],
            child: const Text(
              'Keep Orginazied',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row buttomPart() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomCircleButton(
              fadeEffectDuration: 1000,
              fadeEffectDelay: 3000,
              borderColor: Colors.white,
              onTap: () {
                getStorage.write(isFirstLaunch, true);
                Get.toNamed(Routes.SIGN_IN);
              },
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Animate(
              effects: const [
                FadeEffect(
                  duration: Duration(milliseconds: 1000),
                  delay: Duration(milliseconds: 4000),
                ),
              ],
              child: const Text(
                'Let\'s Start',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Container(
          width: Get.width * 0.15,
        ),
      ],
    );
  }
}
