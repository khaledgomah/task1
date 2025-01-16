import 'package:flutter/material.dart';
import 'package:task1/presentation/resources/color_manager.dart';
import 'package:task1/presentation/resources/text_style_manager.dart';
import 'package:task1/presentation/resources/values_manager.dart';

ThemeData getDataTheme(){
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
              backgroundColor: ColorManager.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          //inputDecorationTheme
          inputDecorationTheme: InputDecorationTheme(
            contentPadding: EdgeInsets.all(AppPadding.p8),
            hintStyle: FontStyles.textStyle14Medium,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.primary,
                width: AppSize.s3,
              ),
              borderRadius: BorderRadius.circular(AppSize.s12),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.darkGrey,
                width: AppSize.s2,
              ),
              borderRadius: BorderRadius.circular(AppSize.s12),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.error,
                width: AppSize.s3,
              ),
              borderRadius: BorderRadius.circular(AppSize.s12),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.primary,
                width: AppSize.s3,
              ),
              borderRadius: BorderRadius.circular(AppSize.s12),
            ),
          ),
        );
        
}