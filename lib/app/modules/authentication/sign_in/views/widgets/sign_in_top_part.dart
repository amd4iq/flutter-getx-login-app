import 'package:flutter/material.dart';

class SignInTopPart extends StatelessWidget {
  const SignInTopPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        Text(
          'Back',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
