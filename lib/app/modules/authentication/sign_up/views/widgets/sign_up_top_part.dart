import 'package:flutter/material.dart';

class SignUpTopPart extends StatelessWidget {
  const SignUpTopPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Create',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        Text(
          'Account',
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
