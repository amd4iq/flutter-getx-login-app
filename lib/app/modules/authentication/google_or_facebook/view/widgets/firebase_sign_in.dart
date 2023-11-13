import 'package:flutter/material.dart';

class FireBaseSignInWith extends StatelessWidget {
  final String image;
  final Function()? onTap;

  const FireBaseSignInWith({
    super.key,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
