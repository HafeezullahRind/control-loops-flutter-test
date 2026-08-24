import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/color_constants.dart';
import 'package:flutter_test_app/constants/app_fonts.dart';

class AppTypography {
  AppTypography._();

  static TextStyle displayLg({Color color = ColorConstant.textColor}) =>
      TextStyle(
        fontFamily: AppFonts.gilroy,
        fontSize: 28.sp,
        fontWeight: FontWeight.w700,
        color: color,
        letterSpacing: -0.5,
        height: 1.25,
      );

  static TextStyle displayLgMd({Color color = ColorConstant.textColor}) =>
      TextStyle(
        fontFamily: AppFonts.gilroy,
        fontSize: 24.sp,
        color: color,
        height: 1.40,
      );

  static TextStyle headingXl({Color color = ColorConstant.textColor}) =>
      TextStyle(
        fontFamily: AppFonts.gilroy,
        fontSize: 22.sp,
        fontWeight: FontWeight.w700,
        color: color,
        letterSpacing: -0.3,
      );

  static TextStyle headingLg({Color color = ColorConstant.textColor}) =>
      TextStyle(
        fontFamily: AppFonts.gilroy,
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: color,
      );

  static TextStyle headingMd({Color color = ColorConstant.textColor}) =>
      TextStyle(
        fontFamily: AppFonts.gilroy,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: color,
      );

  static TextStyle headingSm({Color color = ColorConstant.textColor}) =>
      TextStyle(
        fontFamily: AppFonts.gilroy,
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: color,
      );

  static TextStyle body({
    Color color = ColorConstant.secondaryText,
    double height = 1.55,
  }) => TextStyle(
    fontFamily: AppFonts.gilroy,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: color,
    height: height,
  );

  static TextStyle textfield({
    Color color = ColorConstant.secondaryText,
    double height = 1.40,
  }) => TextStyle(
    fontFamily: AppFonts.gilroy,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: color,
    height: height,
  );

  static TextStyle bodySm({Color color = ColorConstant.secondaryText}) =>
      TextStyle(
        fontFamily: AppFonts.gilroy,
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
        color: color,
        height: 1.5,
      );
}
