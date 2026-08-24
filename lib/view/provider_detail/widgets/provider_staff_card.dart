import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_fonts.dart';
import 'package:flutter_test_app/constants/app_strings.dart';
import 'package:flutter_test_app/constants/color_constants.dart';
import 'package:flutter_test_app/model/provider_model.dart';

Widget providerStaffCard({required ProviderItem provider}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    child: Container(
      width: double.infinity,
      height: 72.h,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFDBDBDB)),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.numberOfStaffs,
            style: TextStyle(
              fontFamily: AppFonts.gilroy,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              height: 1.5,
              color: ColorConstant.textColor,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            provider.numberOfStaffs,
            style: TextStyle(
              fontFamily: AppFonts.gilroy,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: ColorConstant.textColor,
            ),
          ),
        ],
      ),
    ),
  );
}
