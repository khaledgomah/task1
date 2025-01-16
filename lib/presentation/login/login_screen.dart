import 'package:flutter/material.dart';
import 'package:task1/presentation/resources/font_style_manager.dart';
import 'package:task1/presentation/resources/values_manager.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Column(
          children: [
            Spacer(),
            Text(
              'Login',
              style: FontStyleManager.textStyle20Bold,
            ),
            SizedBox(
              height: AppSize.s32,
            ),
            TextField(),
            SizedBox(
              height: AppSize.s8,
            ),
            TextField(),
            SizedBox(
              height: AppSize.s32,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: FontStyleManager.textStyle20Regular,
                )),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      )),
    );
  }
}
