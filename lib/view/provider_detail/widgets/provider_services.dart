import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_fonts.dart';
import 'package:flutter_test_app/constants/app_strings.dart';
import 'package:flutter_test_app/constants/color_constants.dart';
import 'package:flutter_test_app/model/provider_model.dart';

Widget providerServices({required ProviderItem provider}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.services,
          style: TextStyle(
            fontFamily: AppFonts.gilroy,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            height: 1.5,
            color: ColorConstant.textColor,
          ),
        ),
        SizedBox(height: 8.h),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: provider.servicesOffered.asMap().entries.map((entry) {
            return _serviceChip(
              title: entry.value,
              selected: entry.key == 0,
            );
          }).toList(),
        ),
      ],
    ),
  );
}

Widget _serviceChip({required String title, bool selected = false}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
    decoration: BoxDecoration(
      color: selected ? ColorConstant.primary : Colors.white,
      borderRadius: BorderRadius.circular(30.r),
      border: selected
          ? null
          : Border.all(color: ColorConstant.primary.withValues(alpha: 0.3)),
    ),
    child: Text(
      title,
      style: TextStyle(
        fontFamily: AppFonts.gilroy,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: selected ? Colors.white : ColorConstant.primary,
      ),
    ),
  );
}
