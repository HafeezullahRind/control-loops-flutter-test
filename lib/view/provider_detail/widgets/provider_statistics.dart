import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_fonts.dart';
import 'package:flutter_test_app/constants/app_strings.dart';
import 'package:flutter_test_app/model/provider_model.dart';

import '../../../constants/color_constants.dart';

Widget providerStatistics({required ProviderItem provider}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    child: Row(
      children: [
        _statCard(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.star, size: 14, color: Color(0xFFEFC100)),
              SizedBox(width: 1.w),
              Text(provider.overallRating, style: _statValueStyle()),
            ],
          ),
          label: AppStrings.overallRating,
        ),

        SizedBox(width: 8.w),

        _statCard(
          child: Text(provider.totalBookings, style: _statValueStyle()),
          label: AppStrings.totalBookings,
        ),

        SizedBox(width: 8.w),

        _statCard(
          child: Text(
            provider.servicesOffered.length.toString(),
            style: _statValueStyle(),
          ),
          label: AppStrings.servicesOffered,
        ),
      ],
    ),
  );
}

Widget _statCard({required Widget child, required String label}) {
  return Expanded(
    child: Container(
      height: 58.h,
      decoration: BoxDecoration(
        color: ColorConstant.lightBackground,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          child,
          SizedBox(height: 6.h),
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: AppFonts.gilroy,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: ColorConstant.secondaryText,
            ),
          ),
        ],
      ),
    ),
  );
}

TextStyle _statValueStyle() {
  return TextStyle(
    fontFamily: AppFonts.gilroy,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: ColorConstant.textColor,
  );
}
