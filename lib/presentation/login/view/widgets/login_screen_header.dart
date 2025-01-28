import 'package:flutter/material.dart';
import 'package:task1/presentation/resources/font_style_manager.dart';

class LoginScreenHeader extends StatelessWidget {
  const LoginScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Login',
          style: FontStyleManager.textStyle50Bold,
        ),
        Text(
          'Please sign in to continue',
          style: FontStyleManager.textStyle18Regular,
        ),
      ],
    );
  }
}
