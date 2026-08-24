import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_fonts.dart';
import 'package:flutter_test_app/constants/app_strings.dart';
import 'package:flutter_test_app/model/provider_model.dart';

import '../../../constants/color_constants.dart';

Widget serviceProviderInfo(
  BuildContext context, {
  required ProviderItem provider,
}) {
  const primary = ColorConstant.primary;
  const textColor = ColorConstant.textColor;
  return Column(
    children: [
      Text(
        provider.name,
        style: TextStyle(
          fontFamily: AppFonts.gilroy,
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
          height: 1.5,
          color: textColor,
        ),
      ),

      SizedBox(height: 8.h),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.location_on, color: primary, size: 14.sp),
          SizedBox(width: 4.w),
          Text(
            AppStrings.officeAddress,
            style: TextStyle(
              fontFamily: AppFonts.gilroy,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: primary,
            ),
          ),
        ],
      ),

      SizedBox(height: 4.h),

      Text(
        provider.address,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: AppFonts.gilroy,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: textColor,
        ),
      ),
    ],
  );
}
