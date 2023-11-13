import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CustomCircleButton extends StatelessWidget {
  final void Function()? onTap;
  final int fadeEffectDuration;
  final int fadeEffectDelay;
  final Color borderColor;
  final Color color;
  final double borderWidth;
  final Color iconColor;
  const CustomCircleButton({
    super.key,
    this.onTap,
    this.fadeEffectDuration = 0,
    this.fadeEffectDelay = 0,
    this.borderColor = Colors.transparent,
    this.color = const Color(0xff3C404B),
    this.borderWidth = 1.0,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Animate(
        effects: [
          FadeEffect(
            duration: Duration(milliseconds: fadeEffectDuration),
            delay: Duration(milliseconds: fadeEffectDelay),
          ),
        ],
        child: Container(
          width: 95,
          height: 95,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(
              color: borderColor,
              width: borderWidth,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(
            Icons.arrow_forward_ios,
            color: iconColor,
            size: 30,
          ),
        ),
      ),
    );
  }
}
