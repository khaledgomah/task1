import 'package:flutter/material.dart';
import 'package:task1/presentation/resources/color_manager.dart';
import 'package:task1/presentation/resources/font_style_manager.dart';
import 'package:task1/presentation/resources/routs_manager.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Text(
              'Login',
              style: FontStyleManager.textStyle50Bold,
            ),
            Text(
              'Please sign in to continue',
              style: FontStyleManager.textStyle18Regular,
            ),
            SizedBox(
              height: AppSize.s32,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'EMAIL', prefixIcon: Icon(Icons.email_outlined)),
            ),
            SizedBox(
              height: AppSize.s16,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'PASSWORD', prefixIcon: Icon(Icons.lock_outline)),
            ),
            SizedBox(
              height: AppSize.s16,
            ),
            Text(
              'Forgot Password?',
              style: FontStyleManager.textStyle14Regular,
            ),
            SizedBox(
              height: AppSize.s40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routs.home);
                    },
                    child: Row(
                      children: [
                        Text(
                          'LOGIN',
                        ),
                        SizedBox(
                          width: AppSize.s16,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: ColorManager.white,
                          size: AppSize.s20,
                        )
                      ],
                    )),
              ],
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
