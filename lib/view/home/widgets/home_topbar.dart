import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_icons.dart';
import 'package:flutter_test_app/constants/app_strings.dart';
import 'package:flutter_test_app/constants/app_typography.dart';
import 'package:flutter_test_app/constants/color_constants.dart';

class HomeTopbar extends StatelessWidget {
  const HomeTopbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 290.h,
          child: Image.asset(
            AppIcons.homeTopbar,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 58.h,
          left: 16.w,
          child: SizedBox(
            height: 58.h,
            width: 58.w,
            child: CircleAvatar(
              radius: 42.r,
              backgroundImage: const NetworkImage(
                'https://i.pravatar.cc/150?img=47',
              ),
            ),
          ),
        ),

        Positioned(
          top: 61.h,
          left: 84.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.welcome,
                style: AppTypography.headingXl(color: Colors.white),
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Text(
                    AppStrings.userName,
                    style: AppTypography.headingMd(color: Colors.white),
                  ),
                  SizedBox(width: 4.w),
                  Image.asset(AppIcons.handWave, width: 14.w, height: 14.h),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 58.h,
          right: 16.w,
          child: Container(
            width: 58.w,
            height: 58.h,
            decoration: BoxDecoration(
              color: ColorConstant.primary,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(16.r),
            child: Image.asset(AppIcons.bellIcon),
          ),
        ),

        Positioned(
          left: 16.w,
          top: 138.h,
          child: Text(
            AppStrings.whatServiceDoYouNeed,
            style: AppTypography.displayLgMd(color: Colors.white),
          ),
        ),

        Positioned(
          left: 16.w,
          right: 16.w,
          bottom: 24.h,
          child: Container(
            height: 44.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.r),
            ),
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Row(
              children: [
                Image.asset(AppIcons.searchIcon, height: 16.sp, width: 16.sp),
                SizedBox(width: 12.w),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: AppStrings.searchHint,
                      hintStyle: AppTypography.textfield(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
