import 'package:flutter/material.dart';
import 'package:task1/presentation/base/functions.dart';
import 'package:task1/presentation/login/widgets/submit_button.dart';
import 'package:task1/presentation/resources/font_style_manager.dart';
import 'package:task1/presentation/resources/routs_manager.dart';
import 'package:task1/presentation/resources/values_manager.dart';
import 'widgets/login_screen_header.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              LoginScreenHeader(),
              SizedBox(
                height: AppSize.s32,
              ),
              TextFormField(
                validator: (value) => emailValidator(value),
                decoration: InputDecoration(
                    hintText: 'EMAIL', prefixIcon: Icon(Icons.email_outlined)),
              ),
              SizedBox(
                height: AppSize.s16,
              ),
              TextFormField(
                validator: (value) => passwordValidator(value),
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
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, Routs.home);
                        }
                      },
                      child: SubmitButton()),
                ],
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
