import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_fonts.dart';
import 'package:flutter_test_app/constants/color_constants.dart';
import 'package:flutter_test_app/model/provider_model.dart';

Widget providerDescription({required ProviderItem provider}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    child: Text(
      provider.description,
      style: TextStyle(
        fontFamily: AppFonts.gilroy,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        height: 1.5,
        color: ColorConstant.secondaryText,
      ),
    ),
  );
}
