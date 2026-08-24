import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_fonts.dart';
import 'package:flutter_test_app/constants/app_strings.dart';
import 'package:flutter_test_app/constants/color_constants.dart';
import 'package:flutter_test_app/model/provider_model.dart';

Widget providerReviews({required ProviderItem provider}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    child: Container(
      width: double.infinity,
      height: 82.h,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFDBDBDB)),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Stack(
        children: [
          Text(
            AppStrings.reviews,
            style: TextStyle(
              fontFamily: AppFonts.gilroy,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              height: 1.5,
              color: ColorConstant.textColor,
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Row(
              children: [
                Container(
                  height: 26.h,
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE3E3E3)),
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 14,
                        color: Color(0xFFEFC100),
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        provider.reviewRating,
                        style: TextStyle(
                          fontFamily: AppFonts.gilroy,
                          fontSize: 14.sp,
                          color: ColorConstant.secondaryText,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 6.w),
                Text(
                  '(${provider.reviews})',
                  style: TextStyle(
                    fontFamily: AppFonts.gilroy,
                    fontSize: 14.sp,
                    color: ColorConstant.textColor,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: Row(
              children: [
                Align(
                  widthFactor: 0.75,
                  child: _reviewAvatar('https://i.pravatar.cc/100?img=5'),
                ),
                Align(
                  widthFactor: 0.75,
                  child: _reviewAvatar('https://i.pravatar.cc/100?img=12'),
                ),
                _reviewAvatar('https://i.pravatar.cc/100?img=20'),
                SizedBox(width: 8.w),
                Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: const BoxDecoration(
                    color: ColorConstant.lightGray,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: ColorConstant.textColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _reviewAvatar(String image) {
  return Container(
    width: 32.w,
    height: 32.h,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white, width: 1.5),
      image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
    ),
  );
}
