import 'package:flutter/material.dart';
import 'package:task1/presentation/base/decorated_input_border.dart';
import 'package:task1/presentation/resources/color_manager.dart';
import 'package:task1/presentation/resources/font_style_manager.dart';
import 'package:task1/presentation/resources/values_manager.dart';

ThemeData getDataTheme() {
  return ThemeData(
    //colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey,
    splashColor: ColorManager.lightPrimary,

    //textButtonTheme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: ColorManager.white,
        backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    //inputDecorationTheme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(AppPadding.p16),
      hintStyle: FontStyleManager.textStyle14Medium,
      focusedBorder: DecoratedInputBorder(
        child: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.white),
          borderRadius: BorderRadius.zero,
        ),
        shadow: BoxShadow(
          color: ColorManager.lightGrey.withValues(alpha: AppSize.s0_5),
          blurRadius: AppSize.s18,
        ),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.lightGrey,
          width: AppSize.s1,
        ),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.error,
          width: AppSize.s1,
        ),
      ),
      focusedErrorBorder: DecoratedInputBorder(
        child: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.white),
          borderRadius: BorderRadius.zero,
        ),
        shadow: BoxShadow(
          color: ColorManager.lightGrey.withValues(alpha: AppSize.s0_5),
          blurRadius: AppSize.s18,
        ),
      ),
    ),
  );
}
