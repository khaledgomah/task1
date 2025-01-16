import 'package:flutter/material.dart';
import 'package:task1/presentation/resources/color_manager.dart';
import 'package:task1/presentation/resources/font_manager.dart';

class FontStyleManager {
  static TextStyle textStyle14Medium = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeightManager.medium,
    color: ColorManager.grey,
  );
  static TextStyle textStyle14Regular = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeightManager.regular,
  );
  static TextStyle textStyle14SemiBold = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeightManager.semiBold,
  );
  static TextStyle textStyle20Bold = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeightManager.bold,
  );
  static TextStyle textStyle18Bold = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeightManager.bold,
  );
  static TextStyle textStyle16Bold =
      const TextStyle(fontSize: 16, fontWeight: FontWeightManager.bold);
  static TextStyle textStyle18Medium = TextStyle(
      fontSize: 18, fontWeight: FontWeightManager.medium, color: Colors.white);
  static TextStyle textStyle18SemiBold = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeightManager.semiBold,
  );
  static TextStyle textStyle20Regular = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeightManager.regular,
  );
  static TextStyle textStyle30Regular = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeightManager.regular,
  );
}
