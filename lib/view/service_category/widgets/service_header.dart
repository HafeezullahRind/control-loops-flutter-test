
  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_fonts.dart';
import 'package:flutter_test_app/constants/app_icons.dart';
import 'package:flutter_test_app/constants/color_constants.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

Widget buildHeader(BuildContext context,String categoryName,bool showBackButton ) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 58.h),
      child: Row(
        children: [
          if (showBackButton) ...[
            GestureDetector(
              onTap: () {
                if (Navigator.of(context).canPop()) {
                  Get.back();
                }
              },
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
            SizedBox(width: 16.w),
          ],

          Text(
            categoryName,
            style: TextStyle(
              fontFamily: AppFonts.gilroy,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              height: 1.5,
              color: const Color(0xFF1B1B1B),
            ),
          ),
        ],
      ),
    );
  }
