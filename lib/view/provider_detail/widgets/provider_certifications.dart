import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_fonts.dart';
import 'package:flutter_test_app/constants/app_icons.dart';
import 'package:flutter_test_app/constants/app_strings.dart';
import 'package:flutter_test_app/constants/color_constants.dart';
import 'package:flutter_test_app/model/provider_model.dart';

Widget providerCertifications({required ProviderItem provider}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.certification,
          style: TextStyle(
            fontFamily: AppFonts.gilroy,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            height: 1.5,
            color: ColorConstant.textColor,
          ),
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            _certificate(AppIcons.certificate1),
            SizedBox(width: 12.w),
            _certificate(AppIcons.certificate2),
          ],
        ),
      ],
    ),
  );
}

Widget _certificate(String image) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(8.r),
    child: Image.asset(image, width: 112.w, height: 92.h, fit: BoxFit.cover),
  );
}
