import 'package:flutter/material.dart';
import 'package:task1/presentation/resources/color_manager.dart';

ThemeData getDataTheme(){
        return ThemeData(
          //colors
          primaryColor: ColorManager.primary,
          primaryColorLight: ColorManager.lightPrimary,
          primaryColorDark: ColorManager.darkPrimary,
          disabledColor: ColorManager.grey,
        
        );
        
}