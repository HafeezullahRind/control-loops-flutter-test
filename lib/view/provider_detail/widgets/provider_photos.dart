import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_fonts.dart';
import 'package:flutter_test_app/constants/app_icons.dart';
import 'package:flutter_test_app/constants/app_strings.dart';
import 'package:flutter_test_app/constants/color_constants.dart';
import 'package:flutter_test_app/model/provider_model.dart';

Widget providerPhotos({required ProviderItem provider}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.photosAndVideos,
              style: TextStyle(
                fontFamily: AppFonts.gilroy,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                height: 1.5,
                color: ColorConstant.textColor,
              ),
            ),
            Text(
              AppStrings.seeAll,
              style: TextStyle(
                fontFamily: AppFonts.gilroy,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: ColorConstant.primary,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            _photo(AppIcons.catph01),
            SizedBox(width: 12.w),
            _photo(AppIcons.catph02),
            SizedBox(width: 12.w),
            _photo(AppIcons.catph03),
          ],
        ),
      ],
    ),
  );
}

Widget _photo(String image) {
  return Expanded(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
      child: Image.asset(image, height: 92.h, fit: BoxFit.cover),
    ),
  );
}
