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
  static TextStyle textStyle18Regular = const TextStyle(
    fontSize: 18,
    color: ColorManager.grey,
    fontWeight: FontWeightManager.regular,
  );

  static TextStyle textStyle50Bold = const TextStyle(
    fontSize: 50,
    fontWeight: FontWeightManager.bold,
  );
}
