import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_fonts.dart';
import 'package:flutter_test_app/constants/app_icons.dart';
import 'package:flutter_test_app/constants/app_strings.dart';
import 'package:flutter_test_app/constants/color_constants.dart';
import 'package:flutter_test_app/model/provider_model.dart';

Widget serviceHeader(BuildContext context, {required ProviderItem provider}) {
  return SizedBox(
    width: double.infinity,
    height: 156.h,
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned.fill(child: Image.asset(AppIcons.banner, fit: BoxFit.cover)),

        Positioned.fill(
          child: Container(color: Colors.black.withValues(alpha: 0.35)),
        ),

        Positioned(
          left: 16.w,
          top: 58.h,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: 40.w,
              height: 40.h,
              padding: EdgeInsets.all(12.r),
              decoration: const BoxDecoration(
                color: ColorConstant.lightGray,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                AppIcons.backArrowIcon,
                width: 16.w,
                height: 16.h,
                color: const Color(0xFF1B1B1B),
              ),
            ),
          ),
        ),

        Positioned(
          right: 9.w,
          top: 118.h,
          child: Container(
            width: 115.w,
            height: 30.h,
            decoration: BoxDecoration(
              color: const Color(0xFFE5EDEC),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.fullyBooked,
                  style: TextStyle(
                    fontFamily: AppFonts.gilroy,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: ColorConstant.primary,
                  ),
                ),
                SizedBox(width: 4.w),
                Container(
                  width: 6.w,
                  height: 6.h,
                  decoration: BoxDecoration(
                    color: ColorConstant.primary.withValues(alpha: 0.3),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
        ),

        Positioned(
          top: 110.h,
          left: 149.w,
          right: 148.w,

          child: Column(
            children: [
              Container(
                width: 96.w,
                height: 96.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2.w),
                  image: DecorationImage(
                    image: NetworkImage(provider.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 8.h),
            ],
          ),
        ),
      ],
    ),
  );
}
