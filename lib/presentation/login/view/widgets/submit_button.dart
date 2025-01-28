import 'package:flutter/material.dart';
import 'package:task1/presentation/resources/color_manager.dart';
import 'package:task1/presentation/resources/values_manager.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
