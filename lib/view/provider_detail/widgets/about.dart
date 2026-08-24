import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_fonts.dart';
import 'package:flutter_test_app/constants/app_strings.dart';
import 'package:flutter_test_app/constants/color_constants.dart';
import 'package:flutter_test_app/model/provider_model.dart';

Widget about(BuildContext context, {required ProviderItem provider}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.aboutMe,
          style: TextStyle(
            fontFamily: AppFonts.gilroy,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            height: 1.5,
            color: ColorConstant.textColor,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          provider.description,
          style: TextStyle(
            fontFamily: AppFonts.gilroy,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: ColorConstant.secondaryText,
          ),
        ),
      ],
    ),
  );
}
