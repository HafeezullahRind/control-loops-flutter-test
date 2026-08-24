import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/constants/app_fonts.dart';

class RatingBadge extends StatelessWidget {
  final String rating;

  const RatingBadge({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55.w,
      height: 28.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE3E3E3), width: 1),
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.star, size: 14.sp, color: const Color(0xFFEFC100)),

          SizedBox(width: 4.w),

          Text(
            rating,
            style: TextStyle(
              fontFamily: AppFonts.gilroy,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              height: 1.4,
              color: const Color(0xFF1B1B1B),
            ),
          ),
        ],
      ),
    );
  }
}
