import 'package:flutter/material.dart';
import 'package:task1/presentation/resources/color_manager.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.onSaved,
    this.labelText,
    this.validator,
    this.obscureText = false,
    this.maxLines = 1,
    this.onChanged,
    this.autovalidateMode,
    this.initalValue,  this.hint,
  });
  final String? hint;
  final AutovalidateMode? autovalidateMode;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final String? labelText;
  final String? Function(String?)? validator;
  final bool obscureText;
  final int? maxLines;
  final String? initalValue;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initalValue,
      autovalidateMode: autovalidateMode,
      onChanged: onChanged,
      maxLines: maxLines,
      obscureText: obscureText,
      validator: validator,
      onSaved: onSaved,
      
      style: const TextStyle(color: ColorManager.black),
      decoration: InputDecoration(
          floatingLabelStyle: TextStyle(color: ColorManager.primary),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.primary),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 155, 165, 244)),
          ),
          border: const OutlineInputBorder(),
          labelText: labelText,
          hintText: hint,
          focusColor: const Color.fromARGB(8, 255, 255, 255),
          labelStyle: const TextStyle(color: ColorManager.black)),
    );
  }
}
